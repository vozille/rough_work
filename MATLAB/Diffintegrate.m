classdef Diffintegrate
    
    properties
        func
    end
    
    methods
        function output = differetiate(f)
            output = diff(f);
        end
        function output = integrate(f)
            output = int(f);
        end
    end
end

