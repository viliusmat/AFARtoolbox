function varargout = pipelineGUI(varargin)
% PIPELINEGUI MATLAB code for pipelineGUI.fig
%      PIPELINEGUI, by itself, creates a new PIPELINEGUI or raises the existing
%      singleton*.
%
%      H = PIPELINEGUI returns the handle to a new PIPELINEGUI or the handle to
%      the existing singleton*.
%
%      PIPELINEGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PIPELINEGUI.M with the given input arguments.
%
%      PIPELINEGUI('Property','Value',...) creates a new PIPELINEGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before pipelineGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to pipelineGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help pipelineGUI

% Last Modified by GUIDE v2.5 16-Jan-2019 20:44:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @pipelineGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @pipelineGUI_OutputFcn, ...
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


% --- Executes just before pipelineGUI is made visible.
function pipelineGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to pipelineGUI (see VARARGIN)

% Choose default command line output for pipelineGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

CurrDir = pwd; 
DefaultZfaceDir = fullfile(CurrDir,'ZFace');
DefaultFETADir  = fullfile(CurrDir,'FETA');
DefaultAUDir    = fullfile(CurrDir,'AU_detector');
set(handles.ZfaceDirTxt,'string',DefaultZfaceDir);
set(handles.FETADirTxt,'string',DefaultFETADir);
set(handles.AUDirTxt,'string',DefaultAUDir);

% UIWAIT makes pipelineGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = pipelineGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function TrackDirTxt_Callback(hObject, eventdata, handles)
% hObject    handle to TrackDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of TrackDirTxt as text
%        str2double(get(hObject,'String')) returns contents of TrackDirTxt as a double


% --- Executes during object creation, after setting all properties.
function TrackDirTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to TrackDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in TrackDirBnt.
function TrackDirBnt_Callback(hObject, eventdata, handles)
% hObject    handle to TrackDirBnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    TrackList = uigetdir;
    set(handles.TrackDirTxt,'string',TrackList);

function OutDirTxt_Callback(hObject, eventdata, handles)
% hObject    handle to OutDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of OutDirTxt as text
%        str2double(get(hObject,'String')) returns contents of OutDirTxt as a double


% --- Executes during object creation, after setting all properties.
function OutDirTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to OutDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in OutDirBnt.
function OutDirBnt_Callback(hObject, eventdata, handles)
% hObject    handle to OutDirBnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
    
    OutDir = uigetdir;
    set(handles.OutDirTxt,'string',OutDir);



function ZfaceDirTxt_Callback(hObject, eventdata, handles)
% hObject    handle to ZfaceDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ZfaceDirTxt as text
%        str2double(get(hObject,'String')) returns contents of ZfaceDirTxt as a double


% --- Executes during object creation, after setting all properties.
function ZfaceDirTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ZfaceDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in ZfaceDirBnt.
function ZfaceDirBnt_Callback(hObject, eventdata, handles)
% hObject    handle to ZfaceDirBnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    ZfaceDir = uigetdir;
    set(handles.ZfaceDirTxt,'string',ZfaceDir);

% --- Executes on button press in FETADirBnt.
function FETADirBnt_Callback(hObject, eventdata, handles)
% hObject    handle to FETADirBnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    FETADir = uigetdir;
    set(handles.FETADirTxt,'string',FETADir);

function FETADirTxt_Callback(hObject, eventdata, handles)
% hObject    handle to FETADirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FETADirTxt as text
%        str2double(get(hObject,'String')) returns contents of FETADirTxt as a double


% --- Executes during object creation, after setting all properties.
function FETADirTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FETADirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AUDirTxt_Callback(hObject, eventdata, handles)
% hObject    handle to AUDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AUDirTxt as text
%        str2double(get(hObject,'String')) returns contents of AUDirTxt as a double


% --- Executes during object creation, after setting all properties.
function AUDirTxt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AUDirTxt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in AUDirBnt.
function AUDirBnt_Callback(hObject, eventdata, handles)
% hObject    handle to AUDirBnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

    AUDir = uigetdir;
    set(handles.AUDirTxt,'string',AUDir);


% --- Executes on button press in RunPipelineBnt.
function RunPipelineBnt_Callback(hObject, eventdata, handles)
% hObject    handle to RunPipelineBnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in SetParamBnt.
function SetParamBnt_Callback(hObject, eventdata, handles)
% hObject    handle to SetParamBnt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)