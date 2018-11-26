function varargout = CardioZone1(varargin)
% CARDIOZONE1 MATLAB code for CardioZone1.fig
%      CARDIOZONE1, by itself, creates a new CARDIOZONE1 or raises the existing
%      singleton*.
%
%      H = CARDIOZONE1 returns the handle to a new CARDIOZONE1 or the handle to
%      the existing singleton*.
%
%      CARDIOZONE1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CARDIOZONE1.M with the given input arguments.
%
%      CARDIOZONE1('Property','Value',...) creates a new CARDIOZONE1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CardioZone1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CardioZone1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CardioZone1

% Last Modified by GUIDE v2.5 27-Nov-2012 13:47:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CardioZone1_OpeningFcn, ...
                   'gui_OutputFcn',  @CardioZone1_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before CardioZone1 is made visible.
function CardioZone1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CardioZone1 (see VARARGIN)

% Choose default command line output for CardioZone1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CardioZone1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CardioZone1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Strength.
function Strength_Callback(hObject, eventdata, handles)
% hObject    handle to Strength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Strength contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Strength


% --- Executes during object creation, after setting all properties.
function Strength_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Strength (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Cardio.
function Cardio_Callback(hObject, eventdata, handles)
% hObject    handle to Cardio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Cardio contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Cardio


% --- Executes during object creation, after setting all properties.
function Cardio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cardio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Endurance.
function Endurance_Callback(hObject, eventdata, handles)
% hObject    handle to Endurance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Endurance contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Endurance


% --- Executes during object creation, after setting all properties.
function Endurance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Endurance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
