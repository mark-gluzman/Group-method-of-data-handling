

function varargout = lab1_3(varargin)

% LAB1_3 MATLAB code for lab1_3.fig
%      LAB1_3, by itself, creates a new LAB1_3 or raises the existing
%      singleton*.
%
%      H = LAB1_3 returns the handle to a new LAB1_3 or the handle to
%      the existing singleton*.
%
%      LAB1_3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LAB1_3.M with the given input arguments.
%
%      LAB1_3('Property','Value',...) creates a new LAB1_3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before lab1_3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to lab1_3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lab1_3

% Last Modified by GUIDE v2.5 11-Dec-2014 23:21:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lab1_3_OpeningFcn, ...
                   'gui_OutputFcn',  @lab1_3_OutputFcn, ...
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


% --- Executes just before lab1_3 is made visible.
function lab1_3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to lab1_3 (see VARARGIN)



% Choose default command line output for lab1_3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lab1_3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lab1_3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
format long;
global X;
ed1 = findobj('Tag','edit5');
ed2 = findobj('Tag','edit10');
ed3 = findobj('Tag','edit15');
ed4 = findobj('Tag','edit16');

table1=findobj('Tag','uitable3');
table2=findobj('Tag','uitable8');
table3=findobj('Tag','uitable11');
table4=findobj('Tag','uitable10');
table5=findobj('Tag','uitable12');

noise=str2double(get(ed2,'String'));
n=str2double(get(ed1,'String'));
a=str2double(get(ed3,'String'));
b=str2double(get(ed4,'String'));


% Create the column and row names in cell arrays 
cnames = {'x1','x2','x3','x4','x5'};
set (table1, 'ColumnName', cnames);


X=rand(n,5);
for i=1:n
    for j=1:5
    X(i,j)=X(i,j)*(b-a)+a;
    end;
end;
    
set (table1, 'Data', X);



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function uitable3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uitable3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
format long;

global X;
ed1 = findobj('Tag','edit5');
ed2 = findobj('Tag','edit10');
ed3 = findobj('Tag','edit15');
ed4 = findobj('Tag','edit16');

table1=findobj('Tag','uitable3');
table2=findobj('Tag','uitable8');
table3=findobj('Tag','uitable11');
table4=findobj('Tag','uitable10');
table5=findobj('Tag','uitable12');

noise=str2double(get(ed2,'String'));
n=str2double(get(ed1,'String'));
a=str2double(get(ed3,'String'));
b=str2double(get(ed4,'String'));


% Create the column and row names in cell arrays 



N=mvnrnd(0,noise,n);
cnames = {'noise'};
set (table2, 'ColumnName', cnames);
set (table2, 'Data', N);

teta0=[3 -2 1 0 0];

Y=X*teta0'+N;
set (table3, 'Data', Y);


Mn=MNKO(X,Y,5);
cnames = {'Q1*','Q2*','Q3*','Q4*','Q5*'};
set (table4, 'ColumnName', cnames);
set (table4, 'Data', Mn);

rss=RSS(X,Y,5);
cp=CP(rss,5);
fpe=FPE(rss, n,5);
d=[rss cp fpe];
cnames = {'RSS','Cp','FPE'};
set (table5, 'ColumnName', cnames);
set (table5, 'Data', d);

t=[1 2 3 4 5];

axes(handles.axes2);
plot(t,rss,'b-',t,cp,'r-',t,fpe,'g-');
title('criterion-complexity');
legend('RSS','Cp','FPE');
grid on;

function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
