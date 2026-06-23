module traffic_controller(input clk,rst,
                            output reg [2:0] roadA,roadB);
                            
 reg [1:0]ps,ns;
 reg [3:0]count;
 parameter s0=2'b00;
 parameter s1=2'b01;
 parameter s2=2'b10;
 parameter s3=2'b11;
 
 
 //present state
 always@(posedge clk or posedge rst)
 begin
    if(rst)
    begin
        
        ps<=s0;
   end
   else
   begin
    ps<=ns;
    
    end
end


//next state combi 
always@(*)
begin
    ns=ps;
    case(ps)
     s0:begin
            if(count==9)
            begin
                ns=s1;
               
            end
            else
                ns=s0;
         end
     s1:begin
            if(count==1)
                begin 
                    ns=s2;
                   
                end
             else
                ns=s1;
            end
            
     s2:begin
            if(count==9)
                begin
                    ns=s3;
                  
                 end
             else
                ns=s2;
         end
      s3:begin
            if(count==1)
                begin
                    ns=s0;
                    
                    end
             else
                ns=s3;
          end
     default:ns=s0;
     endcase
 end
 
 
 
 //output combi logic
 always@(*) begin
    {roadA,roadB}=0;
     case(ps)
     s0:begin
        
                roadA = 3'b001;
                roadB=3'b100;
                
                end
     s1:begin
        
        roadA=3'b010;
        roadB=3'b100;
        
        end
     s2:begin
        
            roadA=3'b100;
            roadB=3'b001;
        end
        
     s3:begin
        
        roadA=3'b100;
        roadB=3'b010;
        
        end
     default:{roadA,roadB}=0;
     endcase
     
end

//counter
always @(posedge clk or posedge rst )begin
    if(rst)
        count<=0;
    else if (ps!=ns)
        count<=0;
    else
        count<=count+1;
                    
 end




endmodule