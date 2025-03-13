.data

matrice: .space 1600
mesaj: .space 11
decriptat: .space 23
lungime: .space 4
index: .space 4
elemmatrice: .space 4
m: .space 4
n: .space 4
p: .space 4 
k: .space 4
i: .space 4
x: .space 4
cd: .space 4
linie: .space 4
coloana: .space 4
nrlinii: .space 4
nrcoloane: .space 4
nrvecini: .space 4
a: .space 4
contor0: .space 4
formatIntCitire: .asciz "%d"
formatInt: .asciz "%d "
formatChar: .asciz "%s"
formatHex: .asciz "%X"
formatChestie: .asciz "0x"
newLine: .asciz "\n"

.text
.global main

main:


    pushl $m
	pushl $formatIntCitire
	call scanf
	popl %ebx
	popl %ebx
	
	pushl $n
	pushl $formatIntCitire
	call scanf
	popl %ebx
	popl %ebx
	
	pushl $p
	pushl $formatIntCitire
	call scanf
	popl %ebx
	popl %ebx

    lea matrice, %edi

movl m, %eax
addl $2, %eax
movl %eax, nrlinii
movl n, %eax
addl $2, %eax
movl %eax, nrcoloane
movl p, %eax

movl $0, a
for_a:
    movl a, %ecx
    cmp p, %ecx
    je iesire_a

    pushl $linie
	pushl $formatIntCitire
	call scanf
	popl %ebx
	popl %ebx

    pushl $coloana
	pushl $formatIntCitire
	call scanf
   	popl %ebx
	popl %ebx

	movl linie, %eax
    incl %eax
    movl $0, %edx
	mull nrcoloane
	addl coloana, %eax
    incl %eax
    lea matrice, %edi
	movl $1, (%edi, %eax, 4)

    addl $1, a
    jmp for_a

iesire_a:

    pushl $k
	pushl $formatIntCitire
	call scanf
   	popl %ebx
	popl %ebx

    pushl $cd
    pushl $formatIntCitire
    call scanf
    popl %ebx
    popl %ebx


lea matrice, %edi
for_i:

    movl i,%ecx
    cmp %ecx, k
    je iesire_i

    movl $1, linie

    for_linie:
        movl linie, %ecx
        cmp m, %ecx
        jg iesire_linie
        
        movl $1, coloana

        for_coloana:
            movl coloana, %ecx
            cmp n, %ecx
            jg continua_linie
            

            movl linie, %eax 
            xor %edx, %edx
            mull nrcoloane
            addl coloana, %eax                
                
            movl $0, nrvecini

            stanga_sus:
            movl %eax, %ecx
            subl nrcoloane, %ecx
            subl $1, %ecx    
            movl $0, %ebx              
            cmp (%edi,%ecx,4), %ebx
            je sus
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je sus
            addl $1, nrvecini                                              

            sus:
            movl %eax, %ecx
            subl nrcoloane, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx 
            je sus_dreapta
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je sus_dreapta
            addl $1, nrvecini

            sus_dreapta:
            movl %eax, %ecx
            subl nrcoloane, %ecx
            addl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je stanga
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je stanga
            addl $1, nrvecini
            
            stanga:
            movl %eax, %ecx
            subl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je dreapta
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je dreapta
            addl $1, nrvecini

            dreapta:
            movl %eax, %ecx
            addl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je jos_stanga
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je jos_stanga
            addl $1, nrvecini

            jos_stanga:
            movl %eax, %ecx
            addl nrcoloane, %ecx
            subl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je jos
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je jos
            addl $1, nrvecini

            jos:
            movl %eax, %ecx
            addl nrcoloane, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je jos_dreapta
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je jos_dreapta
            addl $1, nrvecini

            jos_dreapta:
            movl %eax, %ecx
            addl nrcoloane, %ecx
            addl $1, %ecx
            movl $0, %ebx        
            cmp (%edi,%ecx,4), %ebx
            je stare
            movl $2, %ebx
            cmp (%edi,%ecx,4), %ebx
            je stare
            addl $1, nrvecini


            stare:       
               
                movl $2, %ebx 
                cmp %ebx, nrvecini
                jl subpopulare
                cmp %ebx, nrvecini
                je continua
                movl $3, %ebx
                cmp nrvecini, %ebx
                je continuitate
                jmp suprapopulare
                
                subpopulare:
                    movl $0, %ebx
                    cmp (%edi,%eax,4), %ebx
                    je continua
                    movl $3, (%edi,%eax,4)
                    jmp continua

                continuitate:
                    movl $0, %ebx
                    cmp (%edi,%eax,4), %ebx
                    je e_moarta
                    jmp continua
                    e_moarta:
                        movl $2, (%edi,%eax,4)
                        jmp continua
                
                suprapopulare:
                    movl $0, %ebx
                    cmp (%edi,%eax,4), %ebx
                    je continua
                    movl $3, (%edi,%eax,4)
            continua:
            addl $1, coloana
            jmp for_coloana

    continua_linie:
        addl $1, linie
        jmp for_linie


iesire_linie:

lea matrice, %edi
movl $1, linie
pentru_linie:
    
    movl linie, %ecx
    cmp m, %ecx
    jg iesire_linii
    movl $1, coloana
    pentru_coloane:
        
        movl coloana, %ecx
        cmp n, %ecx
        jg continua_linie2

        movl linie, %eax  
        xor %edx, %edx 
        mull nrcoloane
        addl coloana, %eax

        movl $2, %ebx
        cmp %ebx, (%edi,%eax,4)
        je reinvie 
        movl $3, %ebx
        cmp %ebx, (%edi,%eax,4)
        je moare
        jmp nu_se_schimba

        moare:
        movl $0, (%edi,%eax,4)
        jmp nu_se_schimba

        reinvie:
        movl $1, (%edi,%eax,4)
        
        nu_se_schimba:
        addl $1, coloana
        jmp pentru_coloane
    
    continua_linie2:
    addl $1, linie
    jmp pentru_linie


iesire_linii:

continua_i:
    addl $1, i
    jmp for_i

iesire_i:

    movl cd, %eax      
    cmp $1, %eax
    je decriptare               

    pushl $mesaj
    pushl $formatChar
    call scanf
    popl %ebx
    popl %ebx
    
    jmp incepe
    
    decriptare:

    pushl $decriptat
    pushl $formatChar
    call scanf
    pop %ebx
    pop %ebx
    
    lea decriptat, %esi
    lea mesaj, %edi
    xor %eax, %eax
    movl $2, index
    creez:
        movl index, %ebx
        xor %edx, %edx
        movb (%esi, %ebx, 1), %dl
        cmp %edx, contor0
        je exit_creez

            movl $65, %ecx
            cmp %ecx, %edx
            jge e_litera1
            subl $48, %edx
            jmp am_convertit1
            e_litera1:
            subl $55, %edx
            am_convertit1:
            addl $1, index
            movl index, %ebx
            xor %ecx, %ecx
            movb (%esi, %ebx, 1), %cl
            xor %ebx, %ebx
            movb %cl, %bl
            movl $65, %ecx
            cmp %ecx, %ebx
            jge e_litera2
            subl $48, %ebx
            jmp am_convertit2
            e_litera2:
            subl $55, %ebx
            am_convertit2:
            shl $4, %edx
            addl %ebx, %edx
            movb %dl, (%edi, %eax, 1)
            addl $1, %eax

        addl $1, index
        jmp creez

    exit_creez:
    

exit_decriptare:

incepe:
lea matrice, %edi
lea mesaj, %esi
xor %eax, %eax
xor %ebx, %ebx
cate_litere:
    movb (%esi, %eax,1), %bl
    cmp $0, %ebx
    je exit_cate_litere
    addl $1, lungime
    addl $1, %eax
    jmp cate_litere

exit_cate_litere:

lea mesaj, %esi
lea matrice, %edi
movl nrcoloane, %eax
xor %edx, %edx
mull nrlinii
movl %eax, elemmatrice

xor %eax, %eax
movl $0, index
movl $0, contor0
for_bytes:

    movl index, %ebx
    cmp lungime, %ebx
    je exit_for_bytes
    movl $7, %ecx
    xor %edx, %edx
    movb (%esi, %ebx, 1), %dl
    for_biti:
        cmp contor0, %ecx
        jl exit_for_biti

        cmp %eax, elemmatrice
        jne mai_sunt_elemente
        xor %eax,%eax
        mai_sunt_elemente:

        movl $0, %ebx
        cmp %ebx, (%edi, %eax, 4)   
        je este_0                       
        btc %ecx, %edx
        este_0:   
        addl $1,%eax

        subl $1, %ecx
        jmp for_biti
    
    exit_for_biti:
    movl index, %ebx
    movb %dl, (%esi, %ebx, 1)
    addl $1, index
    jmp for_bytes

exit_for_bytes:

xorl %eax, %eax
cmp cd, %eax
je cd_0
pushl $mesaj
pushl $formatChar
call printf
pop %ebx
pop %ebx
    push $newLine
    push $formatChar
    call printf 
    pop %ebx
    pop %ebx
    pushl $0
    call fflush
	pop %ebx
    jmp et_exit

cd_0:

    pushl $formatChestie
    pushl $formatChar
    call printf
    pop %ebx
    pop %ebx

movl $0, index
afisare:
    movl index, %ebx
    cmp %ebx, lungime
    je exit_afisare

    xor %edx, %edx
    lea mesaj, %esi
    movb (%esi, %ebx, 1), %dl
    shr $4, %edx
    push %edx
    push $formatHex
    call printf 
    pop %ebx
    pop %ebx
    movl index, %ebx
    xor %edx, %edx
    lea mesaj, %esi
    movb (%esi, %ebx, 1), %dl
    andl $15, %edx
    push %edx
    push $formatHex
    call printf 
    pop %ebx
    pop %ebx

    addl $1, index
    jmp afisare

exit_afisare:

    push $newLine
    push $formatChar
    call printf 
    pop %ebx
    pop %ebx
    
    pushl $0
    call fflush
	pop %ebx

jmp et_exit

et_exit:
    mov $1, %eax
    xor %ebx, %ebx
    int $0x80

