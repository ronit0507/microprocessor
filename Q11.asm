
; subtract two arrays
.model small
.stack 100h
.data
arr1 db 51,50,49,51,50,'$'
arr2 db 54,54,54,54,54,'$'
str1 db '1st Array : $'
str2 db '2nd Array : $'
str4 db 'Substraction result : $'
.code
main proc
mov ax,@data
mov ds,ax
; Display s1
mov ah,9
lea dx,str1
int 21h
lea dx,arr1
int 21h
; line break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
;Display s2
mov ah,9
lea dx,str2
int 21h
lea dx,arr2
int 21h
lea si,arr1
lea bx,arr2
; Line break
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h
mov ah,9
lea dx,str4
int 21h
;Subtracting Array 
mov cl,5
lab2:
mov al,[bx]
sub al,[si]
add al,48
mov ah,2
mov dl,al
int 21h
inc si
inc bx
loop lab2
mov ah,4ch
int 21h
main endp
end main
