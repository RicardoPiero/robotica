MODULE Module1
    CONST robtarget inicio:=[[547.33065187,0,451.647288113],[0.19080896,0,0.98162719,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_10:=[[350,0,380],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_20:=[[350.000046167,0,479.999936598],[-0.000000052,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30:=[[350,110,320],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_30_2:=[[350,110,420],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];

    PROC main()
        MoveL inicio, v1000, z100, MyTool\WObj:=wobj0;
        reset at1;
        reset giro1;
        reset des1;
        reset p2;
        reset reset1;
        WaitTime 1;
        
        set reset1;
        Path_10;
        WaitTime 2;
        Path_20;
    ENDPROC
    
    PROC Path_10()
        MoveL Target_10,v200,fine,MyTool\WObj:=wobj0;
        WaitTime 1;
        set giro1;
        WaitTime 2.5;
        set at1;
        MoveL Target_20,v200,fine,MyTool\WObj:=wobj0;
        MoveL Target_30,v200,fine,MyTool\WObj:=wobj0;
    ENDPROC
    
    PROC Path_20()
        set des1;
        WaitTime 1;
        set p2;
        MoveL Target_30_2,v500,z100,MyTool\WObj:=wobj0;
        MoveL inicio,v500,z100,MyTool\WObj:=wobj0;
        
    ENDPROC
ENDMODULE