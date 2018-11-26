function varargout = CardioZone3(varargin)
% CARDIOZONE3 MATLAB code for CardioZone3.fig
%      CARDIOZONE3, by itself, creates a new CARDIOZONE3 or raises the existing
%      singleton*.
%
%      H = CARDIOZONE3 returns the handle to a new CARDIOZONE3 or the handle to
%      the existing singleton*.
%
%      CARDIOZONE3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CARDIOZONE3.M with the given input arguments.
%
%      CARDIOZONE3('Property','Value',...) creates a new CARDIOZONE3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before CardioZone3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to CardioZone3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help CardioZone3

% Last Modified by GUIDE v2.5 27-Nov-2012 18:08:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @CardioZone3_OpeningFcn, ...
                   'gui_OutputFcn',  @CardioZone3_OutputFcn, ...
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


% --- Executes just before CardioZone3 is made visible.
function CardioZone3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to CardioZone3 (see VARARGIN)

% Choose default command line output for CardioZone3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes CardioZone3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = CardioZone3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Info_Callback(hObject, eventdata, handles)
% hObject    handle to Info (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Info as text
%        str2double(get(hObject,'String')) returns contents of Info as a double


% --- Executes during object creation, after setting all properties.
function Info_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Info (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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


% --- Executes on selection change in Cardiovascular.
function Cardiovascular_Callback(hObject, eventdata, handles)
% hObject    handle to Cardiovascular (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Cardiovascular contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Cardiovascular


% --- Executes during object creation, after setting all properties.
function Cardiovascular_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Cardiovascular (see GCBO)
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
