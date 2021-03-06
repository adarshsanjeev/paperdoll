function config = create( varargin )
%CREATE Create a new calculator configuration.

  config = struct(...
    'name', 'gradient_calculator', ...
    'input', 'normal_image', ...
    'output', 'gradient' ...
    );
  for i = 1:2:numel(varargin)
    switch varargin{i}
      case 'Input', config.input = varargin{i+1};
      case 'Output', config.output = varargin{i+1};
    end
  end

end

