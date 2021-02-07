sbit LCD_RS at RD0_bit;
sbit LCD_EN at RD1_bit;
sbit LCD_D4 at RD2_bit;
sbit LCD_D5 at RD3_bit;
sbit LCD_D6 at RD4_bit;
sbit LCD_D7 at RD5_bit;
sbit LCD_RS_Direction at TRISD0_bit;
sbit LCD_EN_Direction at TRISD1_bit;
sbit LCD_D4_Direction at TRISD2_bit;
sbit LCD_D5_Direction at TRISD3_bit;
sbit LCD_D6_Direction at TRISD4_bit;
sbit LCD_D7_Direction at TRISD5_bit;

char txt[20];
int count = 0;
 float dist,volt,volt2,volt3;
 float dist1;
 int dist21;
void main()
{
 ANSELC =0;
 TRISC = 0;
 ANSELA = 0xFF;
 TRISA = 0xFF;
  ANSELB = 0;
 TRISB = 0;
 ANSELD = 0;
 TRISD = 0;
  while(1)
  {
  Lcd_Init();
  Lcd_Cmd(_LCD_CLEAR);          // Clear display
  Lcd_Cmd(_LCD_CURSOR_OFF);     // Cursor off

  ADC_Init();
  volt = ADC_Read(0);
  dist =  (0.00044*volt*volt) - (0.51*volt) + 160;
  dist1 = 1.0/dist;
  dist1= ((dist1-0.011111111)/0.055555555)*100;
  dist21 = (dist1/100.0)*255.0;
  PWM1_Init(4000);
  PWM1_Start();
  if(dist21 >= 235)
  {
  PWM1_Set_Duty(255);
  delay_ms(500);
  }
  else if(dist21 <= 8)
  {
  PWM1_Set_Duty(2);
  IntToStr(dist21,txt);
  Lcd_Out(1, 1, txt);
  delay_ms(500);
  }
  else
  {
  PWM1_Set_Duty(dist21);
  IntToStr(dist1,txt);
  Lcd_Out(1, 1, txt);
  delay_ms(167);
  }

  volt2 = ADC_Read(1);
  dist =  (0.00044*volt2*volt2) - (0.51*volt2) + 160;
  dist1 = 1.0/dist;
  dist1= ((dist1-0.011111111)/0.055555555)*100;
  dist21 = (dist1/100.0)*255.0;
  PWM2_Init(4000);
  PWM2_Start();
   if(dist21 >= 235)
  {
  PWM2_Set_Duty(255);
  delay_ms(500);
  }
  else if(dist21 <= 8)
  {
  PWM2_Set_Duty(2);
  delay_ms(500);
  }
  else
  {
  PWM2_Set_Duty(dist21);
  IntToStr(dist21,txt);
//  Lcd_Out(1, 1, txt);
  delay_ms(167);
  }

  volt3 = ADC_Read(2);
  dist =  (0.00044*volt3*volt3) - (0.51*volt3) + 160;
  dist1 = 1.0/dist;
  dist1= ((dist1-0.011111111)/0.055555555)*100;
  dist21 = (dist1/100.0)*255.0;
  PWM3_Init(4000);
  PWM3_Start();
   if(dist21 >= 235)
  {
  PWM3_Set_Duty(255);
  delay_ms(500);
  }
  else if(dist21 <= 8)
  {
  PWM3_Set_Duty(2);
  delay_ms(500);
  }
  else
  {
  PWM3_Set_Duty(dist21);
  IntToStr(dist21,txt);
//  Lcd_Out(1, 1, txt);
  delay_ms(167);
  }
  }
}