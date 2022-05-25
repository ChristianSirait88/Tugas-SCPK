function varargout = projekoi(varargin)

% PROJEKOI MATLAB code for projekoi.fig
%      PROJEKOI, by itself, creates a new PROJEKOI or raises the existing
%      singleton*.
%
%      H = PROJEKOI returns the handle to a new PROJEKOI or the handle to
%      the existing singleton*.
%
%      PROJEKOI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJEKOI.M with the given input arguments.
%
%      PROJEKOI('Property','Value',...) creates a new PROJEKOI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before projekoi_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to projekoi_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help projekoi

% Last Modified by GUIDE v2.5 26-May-2022 01:10:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @projekoi_OpeningFcn, ...
                   'gui_OutputFcn',  @projekoi_OutputFcn, ...
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


% --- Executes just before projekoi is made visible.
function projekoi_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user show (see GUIDATA)
% varargin   command line arguments to projekoi (see VARARGIN)

% Choose default command line output for projekoi
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes projekoi wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = projekoi_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user show (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user show (see GUIDATA)
[~,~, data] = xlsread('Pembangkit.xlsx'); 
data(1:2,:)=[];
set(handles.tabel,'Data',data);



% --- Executes when entered show in editable cell(s) in tabel.
function tabel_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabel (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous show for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the show property. Empty if show was not changed
%	Error: error string when failed to convert EditData to appropriate value for show
% handles    structure with handles and user show (see GUIDATA)


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton3,'Value',0);
set(handles.radiobutton12,'Value',0);
global x1
x1=3;

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton2,'Value',0);
set(handles.radiobutton12,'Value',0);
global y1
y1=3;
% Hint: get(hObject,'Value') returns toggle state of radiobutton3


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton6,'Value',0);
set(handles.radiobutton7,'Value',0);
global y2
y2=2;
% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton5,'Value',0);
set(handles.radiobutton7,'Value',0);
global x2
x2=2;
% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on button press in radiobutton7.
function radiobutton7_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton6,'Value',0);
set(handles.radiobutton7,'Value',0);
global z2
z2=2;
% Hint: get(hObject,'Value') returns toggle state of radiobutton7


% --- Executes on button press in radiobutton8.
function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton9,'Value',0);
set(handles.radiobutton10,'Value',0);
global y3
y3=1;
% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in radiobutton9.
function radiobutton9_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton8,'Value',0);
set(handles.radiobutton10,'Value',0);
global x3
x3=1;
% Hint: get(hObject,'Value') returns toggle state of radiobutton9


% --- Executes on button press in radiobutton10.
function radiobutton10_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton8,'Value',0);
set(handles.radiobutton9,'Value',0);
global z3
z3=1;
% Hint: get(hObject,'Value') returns toggle state of radiobutton10


% --- Executes on button press in proses.
function proses_Callback(hObject, eventdata, handles)
% hObject    handle to proses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global x1
global y1
global z1
global x2
global y2
global z2
global x3
global y3
global z3
if (isequal(x1,0)&&isequal(x2,0)&&isequal(x3 ,0))||(isequal(y1,0)&&isequal(y2,0)&&isequal(y3 ,0))||(isequal(z1,0)&&isequal(z2,0)&&isequal(z3 ,0))
    set(handles.text5, 'String',"Input Tidak Boleh Sama!!");
end
x=0;y=0;z=0;
if isequal(x1,3)
    x=3;
elseif isequal(x2,2)
    x=2;
elseif isequal(x3,1)
    x=1;
end
if isequal(y1,3)
    y=3;
elseif isequal(y2,2)
    y=2;
elseif isequal(y3,1)
    y=1;
end
if isequal(z1,3)
    z=3;
elseif isequal(z2,2)
    z=2;  
elseif isequal(z3,1)
    z=1; 
end
a=x/y;
b=x/z;
c=y/z;
if isequal(a,3/2)
    a=2/1;
elseif isequal(a,2/3)
    a=1/2;
elseif isequal(b,3/2)
    b=2/1;
elseif isequal(b,2/3)
    b=1/2;
elseif isequal(c,3/2)
    c=2/1;
elseif isequal(c,2/3)
    c=1/2;
end

%set matriks perbandingan berpasangan (MPB)
%       K   L   D
MPB = [1/1 a   b; %K 
       1/a 1/1 c; %L
       1/b 1/c 1/1];%D
w_MPB = calc_norm(MPB);
%nilai eigen
[m,n] = size(w_MPB);
for i=1:m
    sumRow=0;
    for j=1:n
        sumRow=sumRow+w_MPB(i,j);
    end
    V(i)=sumRow;
end
w_MPB=transpose(V)/m;

datakapasitas = detectImportOptions('Pembangkit.xlsx','NumHeaderLines',1);
datakapasitas.SelectedVariableNames = (4);
MPK = str2double(readmatrix('Pembangkit.xlsx', datakapasitas));
w_MPK = calc_norm(MPK);

datakapasitas = detectImportOptions('Pembangkit.xlsx','NumHeaderLines',1);
datakapasitas.SelectedVariableNames = (5);
MPA = str2double(readmatrix('Pembangkit.xlsx', datakapasitas));
w_MPA = calc_norm(MPA);

datakapasitas = detectImportOptions('Pembangkit.xlsx','NumHeaderLines',1);
datakapasitas.SelectedVariableNames = (6);
MPD = str2double(readmatrix('Pembangkit.xlsx', datakapasitas));
w_MPD = calc_norm(MPD);

wH = [w_MPK w_MPA w_MPD];
disp('Score Lomba');
scoreLomba = wH*w_MPB;
hasil = max(scoreLomba);
set(handles.text5, 'String',hasil);

% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.radiobutton3,'Value',0);
set(handles.radiobutton2,'Value',0);
set(handles.radiobutton8,'Value',0);
set(handles.radiobutton9,'Value',0);
set(handles.radiobutton5,'Value',0);
set(handles.radiobutton7,'Value',0);
set(handles.radiobutton6,'Value',0);
set(handles.radiobutton10,'Value',0);
set(handles.radiobutton12,'Value',0);
set(handles.text5, 'String',"");
global x1 
global y1 
global z1
global x2
global y2
global z2
global x3
global y3
global z3
 x1 = 0;
 y1 = 0;
 z1= 0;
 x2 = 0;
 y2=0;
 z2=0;
 x3=0;
 y3=0;
 z3=0;

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton12.
function radiobutton12_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global z1
z1=3;
% Hint: get(hObject,'Value') returns toggle state of radiobutton12
function[normvect]= calc_norm(M)
        sM=sum(M);
        normvect=M./sM;
    
    