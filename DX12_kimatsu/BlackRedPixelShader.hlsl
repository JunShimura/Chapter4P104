struct Input {
	float4 pos:POSITION;
	float4 svpos:SV_POSITION;
};

float4 BasicPS(Input input) : SV_TARGET{
	// �����ŐԁA�E���ō�
	return float4(step(input.svpos.x, 640), 0, 0, 1);
}