struct Input {
	float4 pos:POSITION;
	float4 svpos:SV_POSITION;
};

float4 BasicPS(Input input) : SV_TARGET{
	float v1 = step(input.svpos.x % 32, 16.0f);
	float v2 = step(input.svpos.y % 32, 16.0f);
	return float4(0, (v1 + v2) % 2, 0, 1);
}