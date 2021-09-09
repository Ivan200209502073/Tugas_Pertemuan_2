function varargout = gui_citra_gambar(varargin)
% GUI_CITRA_GAMBAR MATLAB code for gui_citra_gambar.fig
%      GUI_CITRA_GAMBAR, by itself, creates a new GUI_CITRA_GAMBAR or raises the existing
%      singleton*.
%
%      H = GUI_CITRA_GAMBAR returns the handle to a new GUI_CITRA_GAMBAR or the handle to
%      the existing singleton*.
%
%      GUI_CITRA_GAMBAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_CITRA_GAMBAR.M with the given input arguments.
%
%      GUI_CITRA_GAMBAR('Property','Value',...) creates a new GUI_CITRA_GAMBAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_citra_gambar_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_citra_gambar_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui_citra_gambar

% Last Modified by GUIDE v2.5 06-Sep-2021 23:25:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_citra_gambar_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_citra_gambar_OutputFcn, ...
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


% --- Executes just before gui_citra_gambar is made visible.
function gui_citra_gambar_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_citra_gambar (see VARARGIN)

% Choose default command line output for gui_citra_gambar
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_citra_gambar wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_citra_gambar_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in gambar1.
function gambar1_Callback(hObject, eventdata, handles)
% hObject    handle to gambar1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Gambar Asli
a = imread("ivan.jpg");
axes(handles.axes1)
imshow(a)
title("Citra Berwarna")

% --- Executes on button press in gambar2.
function gambar2_Callback(hObject, eventdata, handles)
% hObject    handle to gambar2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Dekomposisi keabuan
a = imread("ivan.jpg");
a_keabuan = 0.4 * a(:,:,1) + 0.32 * a(:,:,2) + 0.28 * a(:,:,3);
axes(handles.axes2)
imshow(a_keabuan)
title('Citra Keabuan')

% --- Executes on button press in gambar3.
function gambar3_Callback(hObject, eventdata, handles)
% hObject    handle to gambar3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Brightness
a = imread("ivan.jpg");
kecerahan = 85;
a_brightness = a + kecerahan;
axes(handles.axes3)
imshow(a_brightness)
title('Citra Brightness')

% --- Executes on button press in gambar4.
function gambar4_Callback(hObject, eventdata, handles)
% hObject    handle to gambar4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Kontras
a = imread("ivan.jpg");
kontras = 1.5;
a_kontras = a * kontras;
axes(handles.axes4)
imshow(a_kontras)
title('Citra Kontras')

% --- Executes on button press in gambar5.
function gambar5_Callback(hObject, eventdata, handles)
% hObject    handle to gambar5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Biner
a = imread("ivan.jpg");
a_biner = im2bw (a, 0.4);
axes(handles.axes5)
imshow (a_biner)
title ('Citra Biner')


% --- Executes on button press in gambar6.
function gambar6_Callback(hObject, eventdata, handles)
% hObject    handle to gambar6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
delete(handles.figure1)