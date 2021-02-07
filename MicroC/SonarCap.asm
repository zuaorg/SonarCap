
_main:

;SonarCap.c,19 :: 		void main()
;SonarCap.c,21 :: 		ANSELC =0;
	CLRF        ANSELC+0 
;SonarCap.c,22 :: 		TRISC = 0;
	CLRF        TRISC+0 
;SonarCap.c,23 :: 		ANSELA = 0xFF;
	MOVLW       255
	MOVWF       ANSELA+0 
;SonarCap.c,24 :: 		TRISA = 0xFF;
	MOVLW       255
	MOVWF       TRISA+0 
;SonarCap.c,25 :: 		ANSELB = 0;
	CLRF        ANSELB+0 
;SonarCap.c,26 :: 		TRISB = 0;
	CLRF        TRISB+0 
;SonarCap.c,27 :: 		ANSELD = 0;
	CLRF        ANSELD+0 
;SonarCap.c,28 :: 		TRISD = 0;
	CLRF        TRISD+0 
;SonarCap.c,29 :: 		while(1)
L_main0:
;SonarCap.c,31 :: 		Lcd_Init();
	CALL        _Lcd_Init+0, 0
;SonarCap.c,32 :: 		Lcd_Cmd(_LCD_CLEAR);          // Clear display
	MOVLW       1
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SonarCap.c,33 :: 		Lcd_Cmd(_LCD_CURSOR_OFF);     // Cursor off
	MOVLW       12
	MOVWF       FARG_Lcd_Cmd_out_char+0 
	CALL        _Lcd_Cmd+0, 0
;SonarCap.c,35 :: 		ADC_Init();
	CALL        _ADC_Init+0, 0
;SonarCap.c,36 :: 		volt = ADC_Read(0);
	CLRF        FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	CALL        _word2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+4 
	MOVF        R1, 0 
	MOVWF       FLOC__main+5 
	MOVF        R2, 0 
	MOVWF       FLOC__main+6 
	MOVF        R3, 0 
	MOVWF       FLOC__main+7 
	MOVF        FLOC__main+4, 0 
	MOVWF       _volt+0 
	MOVF        FLOC__main+5, 0 
	MOVWF       _volt+1 
	MOVF        FLOC__main+6, 0 
	MOVWF       _volt+2 
	MOVF        FLOC__main+7, 0 
	MOVWF       _volt+3 
;SonarCap.c,37 :: 		dist =  (0.00044*volt*volt) - (0.51*volt) + 160;
	MOVLW       205
	MOVWF       R0 
	MOVLW       175
	MOVWF       R1 
	MOVLW       102
	MOVWF       R2 
	MOVLW       115
	MOVWF       R3 
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        R2, 0 
	MOVWF       FLOC__main+2 
	MOVF        R3, 0 
	MOVWF       FLOC__main+3 
	MOVLW       92
	MOVWF       R0 
	MOVLW       143
	MOVWF       R1 
	MOVLW       2
	MOVWF       R2 
	MOVLW       126
	MOVWF       R3 
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVF        FLOC__main+0, 0 
	MOVWF       R0 
	MOVF        FLOC__main+1, 0 
	MOVWF       R1 
	MOVF        FLOC__main+2, 0 
	MOVWF       R2 
	MOVF        FLOC__main+3, 0 
	MOVWF       R3 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       134
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist+0 
	MOVF        R1, 0 
	MOVWF       _dist+1 
	MOVF        R2, 0 
	MOVWF       _dist+2 
	MOVF        R3, 0 
	MOVWF       _dist+3 
;SonarCap.c,38 :: 		dist1 = 1.0/dist;
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist1+0 
	MOVF        R1, 0 
	MOVWF       _dist1+1 
	MOVF        R2, 0 
	MOVWF       _dist1+2 
	MOVF        R3, 0 
	MOVWF       _dist1+3 
;SonarCap.c,39 :: 		dist1= ((dist1-0.011111111)/0.055555555)*100;
	MOVLW       97
	MOVWF       R4 
	MOVLW       11
	MOVWF       R5 
	MOVLW       54
	MOVWF       R6 
	MOVLW       120
	MOVWF       R7 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       57
	MOVWF       R4 
	MOVLW       142
	MOVWF       R5 
	MOVLW       99
	MOVWF       R6 
	MOVLW       122
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist1+0 
	MOVF        R1, 0 
	MOVWF       _dist1+1 
	MOVF        R2, 0 
	MOVWF       _dist1+2 
	MOVF        R3, 0 
	MOVWF       _dist1+3 
;SonarCap.c,40 :: 		dist21 = (dist1/100.0)*255.0;
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       127
	MOVWF       R6 
	MOVLW       134
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dist21+0 
	MOVF        R1, 0 
	MOVWF       _dist21+1 
;SonarCap.c,41 :: 		PWM1_Init(4000);
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       172
	MOVWF       PR2+0, 0
	CALL        _PWM1_Init+0, 0
;SonarCap.c,42 :: 		PWM1_Start();
	CALL        _PWM1_Start+0, 0
;SonarCap.c,43 :: 		if(dist21 >= 235)
	MOVLW       128
	XORWF       _dist21+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main24
	MOVLW       235
	SUBWF       _dist21+0, 0 
L__main24:
	BTFSS       STATUS+0, 0 
	GOTO        L_main2
;SonarCap.c,45 :: 		PWM1_Set_Duty(255);
	MOVLW       255
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;SonarCap.c,46 :: 		delay_ms(500);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       75
	MOVWF       R13, 0
L_main3:
	DECFSZ      R13, 1, 1
	BRA         L_main3
	DECFSZ      R12, 1, 1
	BRA         L_main3
	DECFSZ      R11, 1, 1
	BRA         L_main3
	NOP
	NOP
;SonarCap.c,47 :: 		}
	GOTO        L_main4
L_main2:
;SonarCap.c,48 :: 		else if(dist21 <= 8)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dist21+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main25
	MOVF        _dist21+0, 0 
	SUBLW       8
L__main25:
	BTFSS       STATUS+0, 0 
	GOTO        L_main5
;SonarCap.c,50 :: 		PWM1_Set_Duty(2);
	MOVLW       2
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;SonarCap.c,51 :: 		IntToStr(dist21,txt);
	MOVF        _dist21+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _dist21+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;SonarCap.c,52 :: 		Lcd_Out(1, 1, txt);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SonarCap.c,53 :: 		delay_ms(500);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       75
	MOVWF       R13, 0
L_main6:
	DECFSZ      R13, 1, 1
	BRA         L_main6
	DECFSZ      R12, 1, 1
	BRA         L_main6
	DECFSZ      R11, 1, 1
	BRA         L_main6
	NOP
	NOP
;SonarCap.c,54 :: 		}
	GOTO        L_main7
L_main5:
;SonarCap.c,57 :: 		PWM1_Set_Duty(dist21);
	MOVF        _dist21+0, 0 
	MOVWF       FARG_PWM1_Set_Duty_new_duty+0 
	CALL        _PWM1_Set_Duty+0, 0
;SonarCap.c,58 :: 		IntToStr(dist1,txt);
	MOVF        _dist1+0, 0 
	MOVWF       R0 
	MOVF        _dist1+1, 0 
	MOVWF       R1 
	MOVF        _dist1+2, 0 
	MOVWF       R2 
	MOVF        _dist1+3, 0 
	MOVWF       R3 
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        R1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;SonarCap.c,59 :: 		Lcd_Out(1, 1, txt);
	MOVLW       1
	MOVWF       FARG_Lcd_Out_row+0 
	MOVLW       1
	MOVWF       FARG_Lcd_Out_column+0 
	MOVLW       _txt+0
	MOVWF       FARG_Lcd_Out_text+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_Lcd_Out_text+1 
	CALL        _Lcd_Out+0, 0
;SonarCap.c,60 :: 		delay_ms(167);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       159
	MOVWF       R13, 0
L_main8:
	DECFSZ      R13, 1, 1
	BRA         L_main8
	DECFSZ      R12, 1, 1
	BRA         L_main8
	DECFSZ      R11, 1, 1
	BRA         L_main8
	NOP
	NOP
;SonarCap.c,61 :: 		}
L_main7:
L_main4:
;SonarCap.c,63 :: 		volt2 = ADC_Read(1);
	MOVLW       1
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	CALL        _word2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+4 
	MOVF        R1, 0 
	MOVWF       FLOC__main+5 
	MOVF        R2, 0 
	MOVWF       FLOC__main+6 
	MOVF        R3, 0 
	MOVWF       FLOC__main+7 
	MOVF        FLOC__main+4, 0 
	MOVWF       _volt2+0 
	MOVF        FLOC__main+5, 0 
	MOVWF       _volt2+1 
	MOVF        FLOC__main+6, 0 
	MOVWF       _volt2+2 
	MOVF        FLOC__main+7, 0 
	MOVWF       _volt2+3 
;SonarCap.c,64 :: 		dist =  (0.00044*volt2*volt2) - (0.51*volt2) + 160;
	MOVLW       205
	MOVWF       R0 
	MOVLW       175
	MOVWF       R1 
	MOVLW       102
	MOVWF       R2 
	MOVLW       115
	MOVWF       R3 
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        R2, 0 
	MOVWF       FLOC__main+2 
	MOVF        R3, 0 
	MOVWF       FLOC__main+3 
	MOVLW       92
	MOVWF       R0 
	MOVLW       143
	MOVWF       R1 
	MOVLW       2
	MOVWF       R2 
	MOVLW       126
	MOVWF       R3 
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVF        FLOC__main+0, 0 
	MOVWF       R0 
	MOVF        FLOC__main+1, 0 
	MOVWF       R1 
	MOVF        FLOC__main+2, 0 
	MOVWF       R2 
	MOVF        FLOC__main+3, 0 
	MOVWF       R3 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       134
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist+0 
	MOVF        R1, 0 
	MOVWF       _dist+1 
	MOVF        R2, 0 
	MOVWF       _dist+2 
	MOVF        R3, 0 
	MOVWF       _dist+3 
;SonarCap.c,65 :: 		dist1 = 1.0/dist;
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist1+0 
	MOVF        R1, 0 
	MOVWF       _dist1+1 
	MOVF        R2, 0 
	MOVWF       _dist1+2 
	MOVF        R3, 0 
	MOVWF       _dist1+3 
;SonarCap.c,66 :: 		dist1= ((dist1-0.011111111)/0.055555555)*100;
	MOVLW       97
	MOVWF       R4 
	MOVLW       11
	MOVWF       R5 
	MOVLW       54
	MOVWF       R6 
	MOVLW       120
	MOVWF       R7 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       57
	MOVWF       R4 
	MOVLW       142
	MOVWF       R5 
	MOVLW       99
	MOVWF       R6 
	MOVLW       122
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist1+0 
	MOVF        R1, 0 
	MOVWF       _dist1+1 
	MOVF        R2, 0 
	MOVWF       _dist1+2 
	MOVF        R3, 0 
	MOVWF       _dist1+3 
;SonarCap.c,67 :: 		dist21 = (dist1/100.0)*255.0;
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       127
	MOVWF       R6 
	MOVLW       134
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dist21+0 
	MOVF        R1, 0 
	MOVWF       _dist21+1 
;SonarCap.c,68 :: 		PWM2_Init(4000);
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       172
	MOVWF       PR2+0, 0
	CALL        _PWM2_Init+0, 0
;SonarCap.c,69 :: 		PWM2_Start();
	CALL        _PWM2_Start+0, 0
;SonarCap.c,70 :: 		if(dist21 >= 235)
	MOVLW       128
	XORWF       _dist21+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main26
	MOVLW       235
	SUBWF       _dist21+0, 0 
L__main26:
	BTFSS       STATUS+0, 0 
	GOTO        L_main9
;SonarCap.c,72 :: 		PWM2_Set_Duty(255);
	MOVLW       255
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;SonarCap.c,73 :: 		delay_ms(500);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       75
	MOVWF       R13, 0
L_main10:
	DECFSZ      R13, 1, 1
	BRA         L_main10
	DECFSZ      R12, 1, 1
	BRA         L_main10
	DECFSZ      R11, 1, 1
	BRA         L_main10
	NOP
	NOP
;SonarCap.c,74 :: 		}
	GOTO        L_main11
L_main9:
;SonarCap.c,75 :: 		else if(dist21 <= 8)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dist21+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main27
	MOVF        _dist21+0, 0 
	SUBLW       8
L__main27:
	BTFSS       STATUS+0, 0 
	GOTO        L_main12
;SonarCap.c,77 :: 		PWM2_Set_Duty(2);
	MOVLW       2
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;SonarCap.c,78 :: 		delay_ms(500);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       75
	MOVWF       R13, 0
L_main13:
	DECFSZ      R13, 1, 1
	BRA         L_main13
	DECFSZ      R12, 1, 1
	BRA         L_main13
	DECFSZ      R11, 1, 1
	BRA         L_main13
	NOP
	NOP
;SonarCap.c,79 :: 		}
	GOTO        L_main14
L_main12:
;SonarCap.c,82 :: 		PWM2_Set_Duty(dist21);
	MOVF        _dist21+0, 0 
	MOVWF       FARG_PWM2_Set_Duty_new_duty+0 
	CALL        _PWM2_Set_Duty+0, 0
;SonarCap.c,83 :: 		IntToStr(dist21,txt);
	MOVF        _dist21+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _dist21+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;SonarCap.c,85 :: 		delay_ms(167);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       159
	MOVWF       R13, 0
L_main15:
	DECFSZ      R13, 1, 1
	BRA         L_main15
	DECFSZ      R12, 1, 1
	BRA         L_main15
	DECFSZ      R11, 1, 1
	BRA         L_main15
	NOP
	NOP
;SonarCap.c,86 :: 		}
L_main14:
L_main11:
;SonarCap.c,88 :: 		volt3 = ADC_Read(2);
	MOVLW       2
	MOVWF       FARG_ADC_Read_channel+0 
	CALL        _ADC_Read+0, 0
	CALL        _word2double+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+4 
	MOVF        R1, 0 
	MOVWF       FLOC__main+5 
	MOVF        R2, 0 
	MOVWF       FLOC__main+6 
	MOVF        R3, 0 
	MOVWF       FLOC__main+7 
	MOVF        FLOC__main+4, 0 
	MOVWF       _volt3+0 
	MOVF        FLOC__main+5, 0 
	MOVWF       _volt3+1 
	MOVF        FLOC__main+6, 0 
	MOVWF       _volt3+2 
	MOVF        FLOC__main+7, 0 
	MOVWF       _volt3+3 
;SonarCap.c,89 :: 		dist =  (0.00044*volt3*volt3) - (0.51*volt3) + 160;
	MOVLW       205
	MOVWF       R0 
	MOVLW       175
	MOVWF       R1 
	MOVLW       102
	MOVWF       R2 
	MOVLW       115
	MOVWF       R3 
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       FLOC__main+0 
	MOVF        R1, 0 
	MOVWF       FLOC__main+1 
	MOVF        R2, 0 
	MOVWF       FLOC__main+2 
	MOVF        R3, 0 
	MOVWF       FLOC__main+3 
	MOVLW       92
	MOVWF       R0 
	MOVLW       143
	MOVWF       R1 
	MOVLW       2
	MOVWF       R2 
	MOVLW       126
	MOVWF       R3 
	MOVF        FLOC__main+4, 0 
	MOVWF       R4 
	MOVF        FLOC__main+5, 0 
	MOVWF       R5 
	MOVF        FLOC__main+6, 0 
	MOVWF       R6 
	MOVF        FLOC__main+7, 0 
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVF        FLOC__main+0, 0 
	MOVWF       R0 
	MOVF        FLOC__main+1, 0 
	MOVWF       R1 
	MOVF        FLOC__main+2, 0 
	MOVWF       R2 
	MOVF        FLOC__main+3, 0 
	MOVWF       R3 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       32
	MOVWF       R6 
	MOVLW       134
	MOVWF       R7 
	CALL        _Add_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist+0 
	MOVF        R1, 0 
	MOVWF       _dist+1 
	MOVF        R2, 0 
	MOVWF       _dist+2 
	MOVF        R3, 0 
	MOVWF       _dist+3 
;SonarCap.c,90 :: 		dist1 = 1.0/dist;
	MOVF        R0, 0 
	MOVWF       R4 
	MOVF        R1, 0 
	MOVWF       R5 
	MOVF        R2, 0 
	MOVWF       R6 
	MOVF        R3, 0 
	MOVWF       R7 
	MOVLW       0
	MOVWF       R0 
	MOVLW       0
	MOVWF       R1 
	MOVLW       0
	MOVWF       R2 
	MOVLW       127
	MOVWF       R3 
	CALL        _Div_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist1+0 
	MOVF        R1, 0 
	MOVWF       _dist1+1 
	MOVF        R2, 0 
	MOVWF       _dist1+2 
	MOVF        R3, 0 
	MOVWF       _dist1+3 
;SonarCap.c,91 :: 		dist1= ((dist1-0.011111111)/0.055555555)*100;
	MOVLW       97
	MOVWF       R4 
	MOVLW       11
	MOVWF       R5 
	MOVLW       54
	MOVWF       R6 
	MOVLW       120
	MOVWF       R7 
	CALL        _Sub_32x32_FP+0, 0
	MOVLW       57
	MOVWF       R4 
	MOVLW       142
	MOVWF       R5 
	MOVLW       99
	MOVWF       R6 
	MOVLW       122
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	MOVF        R0, 0 
	MOVWF       _dist1+0 
	MOVF        R1, 0 
	MOVWF       _dist1+1 
	MOVF        R2, 0 
	MOVWF       _dist1+2 
	MOVF        R3, 0 
	MOVWF       _dist1+3 
;SonarCap.c,92 :: 		dist21 = (dist1/100.0)*255.0;
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       72
	MOVWF       R6 
	MOVLW       133
	MOVWF       R7 
	CALL        _Div_32x32_FP+0, 0
	MOVLW       0
	MOVWF       R4 
	MOVLW       0
	MOVWF       R5 
	MOVLW       127
	MOVWF       R6 
	MOVLW       134
	MOVWF       R7 
	CALL        _Mul_32x32_FP+0, 0
	CALL        _double2int+0, 0
	MOVF        R0, 0 
	MOVWF       _dist21+0 
	MOVF        R1, 0 
	MOVWF       _dist21+1 
;SonarCap.c,93 :: 		PWM3_Init(4000);
	BSF         T2CON+0, 0, 0
	BCF         T2CON+0, 1, 0
	MOVLW       172
	MOVWF       PR2+0, 0
	CALL        _PWM3_Init+0, 0
;SonarCap.c,94 :: 		PWM3_Start();
	CALL        _PWM3_Start+0, 0
;SonarCap.c,95 :: 		if(dist21 >= 235)
	MOVLW       128
	XORWF       _dist21+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main28
	MOVLW       235
	SUBWF       _dist21+0, 0 
L__main28:
	BTFSS       STATUS+0, 0 
	GOTO        L_main16
;SonarCap.c,97 :: 		PWM3_Set_Duty(255);
	MOVLW       255
	MOVWF       FARG_PWM3_Set_Duty_new_duty+0 
	CALL        _PWM3_Set_Duty+0, 0
;SonarCap.c,98 :: 		delay_ms(500);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       75
	MOVWF       R13, 0
L_main17:
	DECFSZ      R13, 1, 1
	BRA         L_main17
	DECFSZ      R12, 1, 1
	BRA         L_main17
	DECFSZ      R11, 1, 1
	BRA         L_main17
	NOP
	NOP
;SonarCap.c,99 :: 		}
	GOTO        L_main18
L_main16:
;SonarCap.c,100 :: 		else if(dist21 <= 8)
	MOVLW       128
	MOVWF       R0 
	MOVLW       128
	XORWF       _dist21+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main29
	MOVF        _dist21+0, 0 
	SUBLW       8
L__main29:
	BTFSS       STATUS+0, 0 
	GOTO        L_main19
;SonarCap.c,102 :: 		PWM3_Set_Duty(2);
	MOVLW       2
	MOVWF       FARG_PWM3_Set_Duty_new_duty+0 
	CALL        _PWM3_Set_Duty+0, 0
;SonarCap.c,103 :: 		delay_ms(500);
	MOVLW       8
	MOVWF       R11, 0
	MOVLW       4
	MOVWF       R12, 0
	MOVLW       75
	MOVWF       R13, 0
L_main20:
	DECFSZ      R13, 1, 1
	BRA         L_main20
	DECFSZ      R12, 1, 1
	BRA         L_main20
	DECFSZ      R11, 1, 1
	BRA         L_main20
	NOP
	NOP
;SonarCap.c,104 :: 		}
	GOTO        L_main21
L_main19:
;SonarCap.c,107 :: 		PWM3_Set_Duty(dist21);
	MOVF        _dist21+0, 0 
	MOVWF       FARG_PWM3_Set_Duty_new_duty+0 
	CALL        _PWM3_Set_Duty+0, 0
;SonarCap.c,108 :: 		IntToStr(dist21,txt);
	MOVF        _dist21+0, 0 
	MOVWF       FARG_IntToStr_input+0 
	MOVF        _dist21+1, 0 
	MOVWF       FARG_IntToStr_input+1 
	MOVLW       _txt+0
	MOVWF       FARG_IntToStr_output+0 
	MOVLW       hi_addr(_txt+0)
	MOVWF       FARG_IntToStr_output+1 
	CALL        _IntToStr+0, 0
;SonarCap.c,110 :: 		delay_ms(167);
	MOVLW       3
	MOVWF       R11, 0
	MOVLW       88
	MOVWF       R12, 0
	MOVLW       159
	MOVWF       R13, 0
L_main22:
	DECFSZ      R13, 1, 1
	BRA         L_main22
	DECFSZ      R12, 1, 1
	BRA         L_main22
	DECFSZ      R11, 1, 1
	BRA         L_main22
	NOP
	NOP
;SonarCap.c,111 :: 		}
L_main21:
L_main18:
;SonarCap.c,112 :: 		}
	GOTO        L_main0
;SonarCap.c,113 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
