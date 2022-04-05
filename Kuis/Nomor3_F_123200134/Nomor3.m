function varargout = Nomor3(varargin)
% NOMOR3 MATLAB code for Nomor3.fig
%      NOMOR3, by itself, creates a new NOMOR3 or raises the existing
%      singleton*.
%
%      H = NOMOR3 returns the handle to a new NOMOR3 or the handle to
%      the existing singleton*.
%
%      NOMOR3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NOMOR3.M with the given input arguments.
%
%      NOMOR3('Property','Value',...) creates a new NOMOR3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Nomor3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Nomor3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Nomor3

% Last Modified by GUIDE v2.5 17-Mar-2022 14:18:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Nomor3_OpeningFcn, ...
                   'gui_OutputFcn',  @Nomor3_OutputFcn, ...
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


% --- Executes just before Nomor3 is made visible.
function Nomor3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Nomor3 (see VARARGIN)

% Choose default command line output for Nomor3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Nomor3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Nomor3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in data.
function data_Callback(hObject, eventdata, handles)
% hObject    handle to data (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
opts = detectImportOptions('Students-Knowledge.csv');
opts.SelectedVariableNames = (1 : 3);
data = readmatrix('Students-Knowledge.csv',opts);
set(handles.tabel,'data',data);


function str_Callback(hObject, eventdata, handles)
% hObject    handle to str (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of str as text
%        str2double(get(hObject,'String')) returns contents of str as a double


% --- Executes during object creation, after setting all properties.
function str_CreateFcn(hObject, eventdata, handles)
% hObject    handle to str (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function peg_Callback(hObject, eventdata, handles)
% hObject    handle to peg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of peg as text
%        str2double(get(hObject,'String')) returns contents of peg as a double


% --- Executes during object creation, after setting all properties.
function peg_CreateFcn(hObject, eventdata, handles)
% hObject    handle to peg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function lpr_Callback(hObject, eventdata, handles)
% hObject    handle to lpr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lpr as text
%        str2double(get(hObject,'String')) returns contents of lpr as a double


% --- Executes during object creation, after setting all properties.
function lpr_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lpr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cek.
function cek_Callback(hObject, eventdata, handles)
% hObject    handle to cek (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
str  = str2double(get(handles.str,'String'));
lpr = str2double(get(handles.lpr,'String'));
peg = str2double(get(handles.peg,'String'));
k = str2double(get(handles.k,'String'));

sample  = [str lpr peg];

opts = detectImportOptions('Students-Knowledge.csv');
opts.SelectedVariableNames = [1 2 3];
training = readmatrix('Students-Knowledge.csv',opts);

opts = detectImportOptions('Students-Knowledge.csv');
opts.SelectedVariableNames = (4);
group = readmatrix('Students-Knowledge.csv',opts);

class = fitcknn(training, group ,'NumNeighbors',k);
hasil = predict(class,sample);

if(hasil == "very_low")
    set(handles.Jawab,"BackgroundColor","white");

elseif(hasil == "Low")
    set(handles.Jawab,"BackgroundColor","red"); 
    
elseif(hasil == "Middle")
    set(handles.Jawab,"BackgroundColor","yellow"); 
    
elseif(hasil == "High")
    set(handles.Jawab,"BackgroundColor","Green"); 
end
set(handles.Jawab, 'String',"Level Pengtahuan Anda : "+ hasil);

% --- Executes when entered data in editable cell(s) in tabel.
function tabel_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabel (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.str, 'String', '');
set(handles.lpr, 'String', '');
set(handles.peg, 'String', '');
set(handles.k, 'String', '');
set(handles.Jawab, 'String', '');
set(handles.Jawab,"BackgroundColor","white");


% --- Executes on button press in delete.
function delete_Callback(hObject, eventdata, handles)
% hObject    handle to delete (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.tabel,'data','');
