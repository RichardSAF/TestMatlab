loadedModel = systemcomposer.loadModel("Test_MSG_Gen.slx")
mydict = loadedModel.InterfaceDictionary
interfaceNames = getInterfaceNames(mydict)
for itf_id = 1:length(interfaceNames)
	% my_int=getInterface(mydict,'Topic2')
	CurrentInterface=getInterface(mydict,char(interfaceNames(itf_id)))
	F_MSGfile = fopen(strcat(char(interfaceNames(itf_id)),".msg"),'w')
	for elt_id = 1:length(CurrentInterface.Elements)
		my_var = CurrentInterface.Elements(elt_id)
		fprintf(F_MSGfile, '%s %s\n', my_var.Type.DataType, my_var.Name)
		%my_var.Name
		%my_var.Type.DataType
		%my_var.Type.Dimensions
	end
	fopen(F_MSGfile)
end


%Type name			C++					Python				DDS type
%bool						bool					builtins.bool		boolean
%byte						uint8_t				builtins.bytes*	octet
%char						char					builtins.str*		char
%float32					float					builtins.float*	float
%float64					double				builtins.float*	double
%int8						int8_t				builtins.int*		octet
%uint8						uint8_t				builtins.int*		octet
%int16						int16_t				builtins.int*		short
%uint16					uint16_t			builtins.int*		unsigned short
%int32						int32_t				builtins.int*		long
%uint32					uint32_t			builtins.int*		unsigned long
%int64						int64_t				builtins.int*		long long
%uint64					uint64_t			builtins.int*		unsigned long long
%string					std::string		builtins.str		string
%wstring					std::u16string	builtins.str		wstring

static array						std::array<T, N>		builtins.list*	T[N]
unbounded dynamic array	std::vector				builtins.list	sequence
bounded dynamic array	custom_class<T, N>	builtins.list*	sequence<T, N>
bounded string					std::string					builtins.str*	string