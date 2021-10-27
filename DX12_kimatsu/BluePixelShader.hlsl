struct Input {
	float4 pos:POSITION;
	float4 svpos:SV_POSITION;
};

float4 BasicPS(Input input) : SV_TARGET{
	return float4(0,0, 1, 1);
}