function varargout = MTO(varargin)
% MTO MATLAB code for MTO.fig
%      MTO, by itself, creates a new MTO or raises the existing
%      singleton*.
%
%      H = MTO returns the handle to a new MTO or the handle to
%      the existing singleton*.
%
%      MTO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MTO.M with the given input arguments.
%
%      MTO('Property','Value',...) creates a new MTO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before MTO_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to MTO_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES
%
% Yuichi Takeuchi, Ph.D., Department of Physiology, University of Szeged
% yuichi-takeuchi@umin.net
% Yuichi Takeuchi (c) 2017

% Edit the above text to modify the response to help MTO

% Last Modified by GUIDE v2.5 27-May-2017 13:29:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @MTO_OpeningFcn, ...
                   'gui_OutputFcn',  @MTO_OutputFcn, ...
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

% --- Executes just before MTO is made visible.
function MTO_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to MTO (see VARARGIN)

% Choose default command line output for MTO
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes MTO wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = MTO_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ObjectiveStr = '';
range1 = floor(str2double(handles.edit1.String));
range2 = floor(str2double(handles.edit2.String));
while isempty(ObjectiveStr)
    num1 = num2str(randi([range1 range2]));
    num2 = num2str(randi([2 18]));
    TopicStr = evalin('base', ['Objectives{' num1 ',1}']);
    ObjectiveStr = evalin('base', ['Objectives{' num1 ',' num2 '}']);
end
set(handles.text6, 'String', TopicStr);
set(handles.text7, 'String', ObjectiveStr);

% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ObjectiveStr = '';
range1 = floor(str2double(handles.edit1.String));
range2 = floor(str2double(handles.edit2.String));
while isempty(ObjectiveStr)
    num1 = num2str(randi([range1 range2]));
    num2 = num2str(randi([2 18]));
    TopicStr = evalin('base', ['Objectives{' num1 ',1}']);
    ObjectiveStr = evalin('base', ['Objectives{' num1 ',' num2 '}']);
end
set(handles.text8, 'String', TopicStr);
set(handles.text9, 'String', ObjectiveStr);

% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ObjectiveStr = '';
range1 = floor(str2double(handles.edit1.String));
range2 = floor(str2double(handles.edit2.String));
while isempty(ObjectiveStr)
    num1 = num2str(randi([range1 range2]));
    num2 = num2str(randi([2 18]));
    TopicStr = evalin('base', ['Objectives{' num1 ',1}']);
    ObjectiveStr = evalin('base', ['Objectives{' num1 ',' num2 '}']);
end
set(handles.text10, 'String', TopicStr);
set(handles.text11, 'String', ObjectiveStr);

% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
NormalValueStr = '';
range1 = floor(str2double(handles.edit1.String));
range2 = floor(str2double(handles.edit2.String));
while isempty(NormalValueStr)
    num1 = num2str(randi([range1 range2]));
    num2 = num2str(randi([2 3]));
    TopicStr = evalin('base', ['NormalValue{' num1 ',1}']);
    NormalValueStr = evalin('base', ['NormalValue{' num1 ',' num2 '}']);
end
set(handles.text14, 'String', TopicStr);
set(handles.text15, 'String', NormalValueStr);

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.text6, 'String', '');
set(handles.text7, 'String', '');
set(handles.text8, 'String', '');
set(handles.text9, 'String', '');
set(handles.text10, 'String', '');
set(handles.text11, 'String', '');
set(handles.text14, 'String', '');
set(handles.text15, 'String', '');
set(handles.edit1, 'String', '1');
set(handles.edit2, 'String', '124');

function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

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

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
