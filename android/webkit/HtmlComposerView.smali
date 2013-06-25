.class public Landroid/webkit/HtmlComposerView;
.super Landroid/webkit/WebView;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerView$1;,
        Landroid/webkit/HtmlComposerView$InsertionPosition;,
        Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;,
        Landroid/webkit/HtmlComposerView$MenuHandler;
    }
.end annotation


# static fields
.field public static final ID_COPY:I = 0x1020021

.field private static final ID_COPY_ALL:I = 0x1020409

.field public static final ID_CUT:I = 0x1020020

.field private static final ID_CUT_ALL:I = 0x1020408

.field public static final ID_PASTE:I = 0x1020022

.field public static final ID_PASTE_CLIPBOARD:I = 0x102040a

.field private static final ID_REDO:I = 0x102002d

.field public static final ID_SELECT_ALL:I = 0x102001f

.field public static final ID_START_SELECTION:I = 0x1020028

.field private static final ID_SWITCH_INPUT_METHOD:I = 0x1020024

.field private static final ID_UNDO:I = 0x102002c

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerView"


# instance fields
.field private defaultLoadString:Ljava/lang/String;

.field private ignoreMaxLength:Z

.field imeOptions:I

.field private isContextMenuVisible:Z

.field private isInComposingState:Z

.field private isViewInFocus:Z

.field mAccumlationLength:I

.field mCurHtmlLength:I

.field private mCurSelEnd:I

.field private mCurSelStart:I

.field private mEmojiIsActive:Z

.field private mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

.field private mInput:Landroid/text/method/TextKeyListener;

.field private mIsTouchedCursor:Z

.field private mKeyIsLongPressed:Z

.field private mMaxHtmlLength:I

.field private mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

.field private mShiftKeyIsPressed:Z

.field private mSymKeyIsPressed:Z

.field private mViewWidth:I

.field private prevSpanComposerText:Ljava/lang/String;

.field private prevlen:I

.field private spanComposerText:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 176
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 105
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 109
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 111
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 113
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 115
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 117
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 119
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 121
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 124
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 126
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 128
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 130
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 132
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 134
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 136
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 138
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 140
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 143
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 145
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 152
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 154
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 178
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 105
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 109
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 111
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 113
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 115
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 117
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 119
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 121
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 124
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 126
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 128
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 130
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 132
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 134
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 136
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 138
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 140
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 143
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 145
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 152
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 154
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 188
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 195
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v0, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 109
    const v0, -0x7fffff01

    iput v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 111
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 113
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 115
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 117
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 119
    const v0, 0x186a0

    iput v0, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 121
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 124
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 126
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 128
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 130
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 132
    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 134
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 136
    iput-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 138
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 140
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 143
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 145
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 152
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 154
    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 197
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 205
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 105
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z

    .line 107
    const-string v1, "<html><head><meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\"></head><body contentEditable=true> </body></html>"

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .line 109
    const v1, -0x7fffff01

    iput v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 111
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 113
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 115
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 117
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 119
    const v1, 0x186a0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 121
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 124
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 126
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 128
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 130
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 132
    iput v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 134
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 136
    iput-object v3, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 138
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 140
    iput-boolean v2, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 143
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 145
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 152
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 154
    iput v2, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 207
    invoke-direct {p0, p2}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "data"
    .parameter "mimeType"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 221
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 225
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 227
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/webkit/WebSettings;->setAdvancedCopyPasteFeature(Z)V

    .line 229
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setSoundEffectsEnabled(Z)V

    .line 233
    new-instance v0, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    .line 239
    const-string v1, "htmlcomposer"

    const-string/jumbo v4, "utf-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HtmlComposerView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->enableEditing()V

    .line 245
    sget-object v0, Landroid/text/method/TextKeyListener$Capitalize;->SENTENCES:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v6, v0}, Landroid/text/method/TextKeyListener;->getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/TextKeyListener;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    .line 247
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    .line 249
    new-instance v0, Landroid/webkit/HtmlComposerInputConnection;

    invoke-direct {v0, p0}, Landroid/webkit/HtmlComposerInputConnection;-><init>(Landroid/webkit/HtmlComposerView;)V

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 251
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/HtmlComposerView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    return v0
.end method

.method private getLoadableContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "filePath"

    .prologue
    .line 921
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 929
    .local v1, bufer:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 933
    .local v4, fstream:Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 935
    .local v5, in:Ljava/io/DataInputStream;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 941
    .local v0, br:Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, strLine:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 945
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 973
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fstream:Ljava/io/FileInputStream;
    .end local v5           #in:Ljava/io/DataInputStream;
    .end local v6           #strLine:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .line 975
    .local v3, ep:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " HtmlComposerView "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 977
    iget-object v7, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;

    .end local v3           #ep:Ljava/lang/Exception;
    :goto_1
    return-object v7

    .line 949
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v4       #fstream:Ljava/io/FileInputStream;
    .restart local v5       #in:Ljava/io/DataInputStream;
    .restart local v6       #strLine:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 955
    .local v2, data:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 957
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    .line 959
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 961
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-direct {p0, v7}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 965
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->defaultLoadString:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v7, v2

    .line 969
    goto :goto_1
.end method

.method private isInsertionAllowed(I)Z
    .locals 5
    .parameter "insertionLength"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 987
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    if-eqz v1, :cond_0

    move v1, v3

    .line 1019
    :goto_0
    return v1

    .line 995
    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    sub-int/2addr v1, v2

    div-int/lit8 v0, v1, 0x3

    .line 997
    .local v0, avoidLength:I
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 1001
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    if-ge v1, v0, :cond_1

    move v1, v3

    .line 1005
    goto :goto_0

    .line 1013
    :cond_1
    iput v4, p0, Landroid/webkit/HtmlComposerView;->mAccumlationLength:I

    .line 1015
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->htmlLength()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    .line 1019
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurHtmlLength:I

    add-int/2addr v1, p1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    if-gt v1, v2, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private restartIMEByHtmlComposerView()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 2173
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2175
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-ne v1, v3, :cond_0

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 2176
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 2177
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 2178
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v1, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 2179
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iput v4, v1, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 2181
    :cond_0
    return-void
.end method

.method private updateInputMethodExtractText()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1266
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 1268
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1270
    iget-object v3, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    .line 1296
    :cond_0
    :goto_0
    return-void

    .line 1274
    :cond_1
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 1276
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 1280
    iput v5, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 1282
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 1284
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 1286
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    iput v3, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 1288
    const-string v3, "HtmlComposerView"

    const-string v4, "getExtractedText "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1290
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1292
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1294
    invoke-virtual {v0, p0, v5, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    goto :goto_0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 1702
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 1704
    return-void
.end method

.method public canCopy()Z
    .locals 1

    .prologue
    .line 365
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 367
    const/4 v0, 0x1

    .line 372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canCut()Z
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x1

    .line 356
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canPaste()Z
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v0

    if-ltz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    const/4 v0, 0x1

    .line 390
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSelectAll()Z
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 321
    const/4 v0, 0x1

    .line 326
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeFontColorForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontColor"

    .prologue
    .line 1244
    const-string v0, "ForeColor"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    return-void
.end method

.method public changeFontNameForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontName"

    .prologue
    .line 1226
    const-string v0, "FontName"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    return-void
.end method

.method public changeFontSizeForSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "fontSize"

    .prologue
    .line 1235
    const-string v0, "FontSize"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    return-void
.end method

.method public cleanTempResources()V
    .locals 2

    .prologue
    .line 1253
    const-string v0, "HtmlComposerView"

    const-string v1, "cleanTempResources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->deleteTempDirectory()V

    .line 1257
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 1145
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 1147
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1149
    return-void
.end method

.method public copy()V
    .locals 2

    .prologue
    .line 1120
    const-string v0, "Copy"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1122
    return-void
.end method

.method public cut()V
    .locals 2

    .prologue
    .line 1112
    const-string v0, "Cut"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const-string v1, "HtmlComposerView"

    .line 1734
    const-string v0, "HtmlComposerView"

    const-string v0, " htmlcomposer destroy() "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1740
    const-string v0, "HtmlComposerView"

    const-string v0, "htmlcomposer destroy() hide "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1746
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    if-eqz v0, :cond_1

    .line 1748
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerInputConnection;->setTargetNull()V

    .line 1750
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    .line 1754
    :cond_1
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    .line 1756
    return-void
.end method

.method public disableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1098
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 1100
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 1102
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v0, :cond_0

    .line 1104
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->hideSoftKeyboardForHtmlComposer()V

    .line 1106
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x16

    const/16 v6, 0x13

    const/4 v5, 0x1

    .line 2124
    const/4 v2, 0x0

    .line 2126
    .local v2, retVal:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v5, :cond_1

    move v0, v5

    .line 2128
    .local v0, down:Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2131
    .local v1, keyCode:I
    if-lt v1, v6, :cond_8

    if-gt v1, v7, :cond_8

    .line 2133
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v3

    .line 2135
    .local v3, selctionAtBoundry:I
    if-nez v3, :cond_2

    .line 2137
    if-eqz v0, :cond_0

    .line 2139
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_0
    move v4, v5

    .line 2168
    .end local v3           #selctionAtBoundry:I
    :goto_1
    return v4

    .line 2126
    .end local v0           #down:Z
    .end local v1           #keyCode:I
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 2145
    .restart local v0       #down:Z
    .restart local v1       #keyCode:I
    .restart local v3       #selctionAtBoundry:I
    :cond_2
    if-ne v3, v5, :cond_5

    if-eq v1, v7, :cond_3

    const/16 v4, 0x14

    if-ne v1, v4, :cond_5

    .line 2147
    :cond_3
    if-eqz v0, :cond_4

    .line 2149
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_4
    move v4, v5

    .line 2151
    goto :goto_1

    .line 2155
    :cond_5
    const/4 v4, 0x2

    if-ne v3, v4, :cond_8

    if-eq v1, v6, :cond_6

    const/16 v4, 0x15

    if-ne v1, v4, :cond_8

    .line 2157
    :cond_6
    if-eqz v0, :cond_7

    .line 2159
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    :cond_7
    move v4, v5

    .line 2161
    goto :goto_1

    .line 2168
    .end local v3           #selctionAtBoundry:I
    :cond_8
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_1
.end method

.method public enableEditing()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1088
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEditableSupport(Z)V

    .line 1090
    invoke-virtual {p0, v1}, Landroid/webkit/HtmlComposerView;->setEditable(Z)V

    .line 1092
    return-void
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "command"
    .parameter "value"

    .prologue
    .line 1053
    const-string v1, "Insert"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1059
    .local v0, length:I
    invoke-direct {p0, v0}, Landroid/webkit/HtmlComposerView;->isInsertionAllowed(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1073
    .end local v0           #length:I
    :goto_0
    return-void

    .line 1069
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method declared-synchronized getComposingState()Z
    .locals 1

    .prologue
    .line 168
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getConetextmenuVisibility()Z
    .locals 1

    .prologue
    .line 287
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    return v0
.end method

.method public getCursorPressed()Z
    .locals 1

    .prologue
    .line 280
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    return v0
.end method

.method public getHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, ""

    .line 1642
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 1645
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getBodyHTML()Ljava/lang/String;

    move-result-object v0

    .line 1647
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v1, ""

    move-object v1, v3

    .line 1653
    :goto_0
    return-object v1

    .line 1649
    :cond_0
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1651
    const-string v1, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v2, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1653
    goto :goto_0
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 1600
    iget v0, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    return v0
.end method

.method public getMailContent()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const-string v4, ""

    .line 1660
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->finishComposingText()Z

    .line 1663
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getMailHTML()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    .line 1665
    .local v0, data:Landroid/webkit/WebHTMLMarkupData;
    if-nez v0, :cond_1

    .line 1678
    :cond_0
    :goto_0
    return-object v0

    .line 1668
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebHTMLMarkupData;->HTMLFragment()Ljava/lang/String;

    move-result-object v1

    .line 1670
    .local v1, text:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1672
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)true\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1674
    const-string v2, "\\s+(?i)contenteditable\\s*=\\s*\"?(?i)false\"?"

    const-string v3, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1676
    invoke-virtual {v0, v1}, Landroid/webkit/WebHTMLMarkupData;->setHTMLFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSelectionEnd()I
    .locals 1

    .prologue
    .line 1725
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    return v0
.end method

.method public getSelectionStart()I
    .locals 1

    .prologue
    .line 1719
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    iget v0, v0, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1615
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getPlainText()Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, text:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 1619
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1621
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    const/4 v2, 0x0

    aget-char v1, v1, v2

    .line 1629
    :cond_1
    return-object v0
.end method

.method public handleNavKeys(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    const/4 v1, 0x0

    .line 2053
    packed-switch p1, :pswitch_data_0

    .line 2113
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 2115
    return-void

    .line 2057
    :pswitch_0
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_0

    .line 2059
    const-string v0, "MoveLeftAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2063
    :cond_0
    const-string v0, "MoveLeft"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2072
    :pswitch_1
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_1

    .line 2074
    const-string v0, "MoveRightAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2078
    :cond_1
    const-string v0, "MoveRight"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2085
    :pswitch_2
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_2

    .line 2087
    const-string v0, "MoveUpAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2091
    :cond_2
    const-string v0, "MoveUp"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2099
    :pswitch_3
    iget-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    if-eqz v0, :cond_3

    .line 2101
    const-string v0, "MoveDownAndModifySelection"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2105
    :cond_3
    const-string v0, "MoveDown"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2053
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public htmlLength()I
    .locals 1

    .prologue
    .line 1636
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getHTML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V
    .locals 2
    .parameter "contentFragment"
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 1031
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_1

    .line 1033
    const-string v0, "MoveToBeginningOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    :cond_0
    :goto_0
    const-string v0, "InsertHTML"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1047
    return-void

    .line 1037
    :cond_1
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_END:Landroid/webkit/HtmlComposerView$InsertionPosition;

    if-ne p2, v0, :cond_0

    .line 1039
    const-string v0, "MoveToEndOfDocument"

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public insertImage(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1171
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1173
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    return-void
.end method

.method public insertImage(Ljava/lang/String;II)V
    .locals 3
    .parameter "url"
    .parameter "widthInPixel"
    .parameter "heightInPixel"

    .prologue
    .line 1155
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<img src="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1157
    .local v0, imgMarkup:Ljava/lang/String;
    const-string v1, "InsertHTML"

    invoke-virtual {p0, v1, v0}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    return-void
.end method

.method public insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;
    .locals 1
    .parameter "content"
    .parameter "newCursorPosition"
    .parameter "composing"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ",
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;)",
            "Landroid/webkit/WebView$SelectionOffset;"
        }
    .end annotation

    .prologue
    .line 1080
    .local p4, spanData:Ljava/util/Vector;,"Ljava/util/Vector<Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;

    move-result-object v0

    return-object v0
.end method

.method public isInputMethodTarget()Z
    .locals 2

    .prologue
    .line 310
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 312
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 1695
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public loadHtmlFile(Ljava/lang/String;)V
    .locals 2
    .parameter "htmlFilePath"

    .prologue
    .line 906
    invoke-direct {p0, p1}, Landroid/webkit/HtmlComposerView;->getLoadableContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, data:Ljava/lang/String;
    const-string/jumbo v1, "text/html"

    invoke-direct {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return-void
.end method

.method public moveCursorBegining()V
    .locals 2

    .prologue
    .line 1203
    const-string v0, "MoveToBeginningOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    return-void
.end method

.method public moveCursorEnd()V
    .locals 2

    .prologue
    .line 1196
    const-string v0, "MoveToEndOfDocument"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    return-void
.end method

.method public onContextMenuItem(I)Z
    .locals 6
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 630
    iput-boolean v5, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 643
    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    .line 646
    iget-boolean v2, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v4, v2, :cond_0

    .line 648
    const-string v2, "HtmlComposerView"

    const-string v3, "onContextMenuItem To hide Cursor handler"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iput v5, p0, Landroid/webkit/WebView;->iTimer:I

    .line 652
    iput-boolean v5, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 656
    :cond_0
    sparse-switch p1, :sswitch_data_0

    move v2, v5

    .line 802
    :goto_0
    return v2

    .line 662
    :sswitch_0
    iput-boolean v4, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 666
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->AdvanceTextSelectionAll()Z

    move v2, v4

    .line 668
    goto :goto_0

    .line 673
    :sswitch_1
    invoke-virtual {p0, v4}, Landroid/webkit/HtmlComposerView;->getCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 675
    .local v0, cursurRect:Landroid/graphics/Rect;
    iput-boolean v4, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 677
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/webkit/HtmlComposerView;->setTextSelecitonManualAtContentPoint(II)Z

    .line 679
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    move v2, v4

    .line 683
    goto :goto_0

    .line 688
    .end local v0           #cursurRect:Landroid/graphics/Rect;
    :sswitch_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 690
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 691
    goto :goto_0

    .line 695
    :sswitch_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 697
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->cut()V

    .line 699
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 700
    goto :goto_0

    .line 704
    :sswitch_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 706
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 708
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 710
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    move v2, v4

    .line 712
    goto :goto_0

    .line 722
    :sswitch_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->saveSelection()V

    .line 724
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectAll()V

    .line 726
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->copy()V

    .line 730
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->restoreSelection()V

    .line 732
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    move v2, v4

    .line 736
    goto :goto_0

    .line 750
    :sswitch_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->paste()V

    .line 752
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 754
    goto :goto_0

    .line 767
    :sswitch_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebClipboard;->launchClipboardUI()V

    .line 769
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v2, v4

    .line 771
    goto :goto_0

    .line 775
    :sswitch_8
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->undo()V

    move v2, v4

    .line 777
    goto :goto_0

    .line 782
    :sswitch_9
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->redo()V

    move v2, v4

    .line 784
    goto :goto_0

    .line 789
    :sswitch_a
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 791
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 793
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    :cond_1
    move v2, v4

    .line 797
    goto :goto_0

    .line 656
    nop

    :sswitch_data_0
    .sparse-switch
        0x102001f -> :sswitch_0
        0x1020020 -> :sswitch_2
        0x1020021 -> :sswitch_4
        0x1020022 -> :sswitch_6
        0x1020024 -> :sswitch_a
        0x1020028 -> :sswitch_1
        0x102002c -> :sswitch_8
        0x102002d -> :sswitch_9
        0x1020408 -> :sswitch_3
        0x1020409 -> :sswitch_5
        0x102040a -> :sswitch_7
    .end sparse-switch
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 8
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 466
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 468
    const/4 v0, 0x0

    .line 471
    .local v0, added:Z
    iget-boolean v4, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v7, v4, :cond_0

    .line 472
    iput v6, p0, Landroid/webkit/WebView;->iTimer:I

    .line 474
    iput-boolean v6, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 479
    :cond_0
    new-instance v1, Landroid/webkit/HtmlComposerView$MenuHandler;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkit/HtmlComposerView$MenuHandler;-><init>(Landroid/webkit/HtmlComposerView;Landroid/webkit/HtmlComposerView$1;)V

    .line 482
    .local v1, handler:Landroid/webkit/HtmlComposerView$MenuHandler;
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canSelectAll()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 484
    const v4, 0x102001f

    const v5, 0x104000d

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x61

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 492
    const/4 v0, 0x1

    .line 497
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v4

    if-ne v4, v7, :cond_a

    move v3, v7

    .line 501
    .local v3, selection:Z
    :goto_0
    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isBodyEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 503
    const v4, 0x1020028

    const v5, 0x1040386

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 509
    const/4 v0, 0x1

    .line 514
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 518
    if-eqz v3, :cond_b

    .line 520
    const v2, 0x1040003

    .line 522
    .local v2, name:I
    const v4, 0x1020020

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 538
    :goto_1
    const/4 v0, 0x1

    .line 543
    .end local v2           #name:I
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 547
    if-eqz v3, :cond_c

    .line 549
    const v2, 0x1040001

    .line 551
    .restart local v2       #name:I
    const v4, 0x1020021

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 567
    :goto_2
    const/4 v0, 0x1

    .line 573
    .end local v2           #name:I
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 575
    const v4, 0x1020022

    const v5, 0x104000b

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 579
    const/4 v0, 0x1

    .line 585
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canUndo()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 587
    const v4, 0x102002c

    const v5, 0x1040389

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 595
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->canRedo()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 597
    const v4, 0x102002d

    const v5, 0x104038a

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 605
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->isInputMethodTarget()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 607
    const v4, 0x1020024

    const v5, 0x104038b

    invoke-interface {p1, v7, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 611
    const/4 v0, 0x1

    .line 617
    :cond_8
    if-eqz v0, :cond_9

    .line 619
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    .line 621
    const v4, 0x104038d

    invoke-interface {p1, v4}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 625
    :cond_9
    return-void

    .end local v3           #selection:Z
    :cond_a
    move v3, v6

    .line 497
    goto/16 :goto_0

    .line 526
    .restart local v3       #selection:Z
    :cond_b
    const v2, 0x1040387

    .line 528
    .restart local v2       #name:I
    const v4, 0x1020408

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 555
    .end local v2           #name:I
    :cond_c
    const v2, 0x1040388

    .line 557
    .restart local v2       #name:I
    const v4, 0x1020409

    invoke-interface {p1, v6, v4, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4
    .parameter "outAttrs"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2190
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    if-ne v2, v1, :cond_0

    .line 2194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2196
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "allowEmoji"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2198
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 2203
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    if-nez v1, :cond_1

    .line 2207
    const-string v1, "HtmlComposerView"

    const-string v2, "calling set Caret 0 0 "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2209
    invoke-virtual {p0, v3, v3}, Landroid/webkit/HtmlComposerView;->setEditableSelection(II)V

    .line 2216
    :cond_1
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v1, v1, -0x10

    or-int/lit8 v1, v1, 0x1

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    or-int/lit16 v1, v1, 0x4000

    const v2, 0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 2224
    iget v1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 2225
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 2226
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v1, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 2229
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    return-object v1
.end method

.method public onEditorAction(I)V
    .locals 3
    .parameter "actionCode"

    .prologue
    const/16 v2, 0x82

    .line 1771
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 1773
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 1775
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1777
    invoke-virtual {v0, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1779
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "focus search returned a view that wasn\'t able to take focus!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1793
    .end local v0           #v:Landroid/view/View;
    :cond_0
    const-string v1, "InsertText"

    const-string v2, "\n"

    invoke-virtual {p0, v1, v2}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x0

    .line 1403
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1405
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    .line 1407
    if-nez p1, :cond_1

    .line 1409
    const/4 v0, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v0, v1, :cond_0

    .line 1411
    const-string v0, "HtmlComposerView"

    const-string v1, "onFocusChanged To hide Cursor handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    iput v2, p0, Landroid/webkit/WebView;->iTimer:I

    .line 1415
    iput-boolean v2, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 1417
    iput-boolean v2, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 1421
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->dismissClipboardUI()V

    .line 1425
    :cond_1
    if-eqz p1, :cond_2

    .line 1427
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mPasteListener:Landroid/webkit/HtmlComposerView$SelectionUIPasteListener;

    invoke-virtual {v0, v1}, Landroid/webkit/WebClipboard;->setPasteListener(Landroid/webkit/WebClipboard$OnPasteFromSelectionUIListener;)V

    .line 1429
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getWebClipboard()Landroid/webkit/WebClipboard;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebClipboard;->updateClipboardUI()V

    .line 1431
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 1437
    :cond_2
    invoke-virtual {p0, p1}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1439
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v8, "InsertText"

    .line 1815
    iget-boolean v4, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v7, v4, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-ge v7, v4, :cond_0

    .line 1819
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1834
    :cond_0
    const/16 v4, 0x3f

    if-ne p1, v4, :cond_1

    .line 1838
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1849
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 1852
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_2

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_7

    .line 1856
    :cond_2
    iput-boolean v7, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 1867
    :cond_3
    iput v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1869
    iput v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1871
    const/4 v1, 0x0

    .line 1874
    .local v1, prevSpanTextBeforeStartOffset:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    iget v5, v5, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1877
    .local v3, spannableString:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1881
    .local v2, spannableChar:[C
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 1884
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, v6, v3}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1886
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iput v4, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1888
    iget v4, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1890
    iget v4, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1893
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v4, :cond_4

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v4, :cond_4

    .line 1897
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1904
    :cond_4
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lt v4, v7, :cond_5

    .line 1908
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1913
    :cond_5
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v4, :cond_b

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v5, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4, p0, v5, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1917
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget v5, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v4, v5

    .line 1919
    .local v0, diff:I
    if-lez v0, :cond_a

    .line 1923
    if-eqz v1, :cond_9

    .line 1927
    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_8

    .line 1931
    const-string v4, ""

    invoke-virtual {p0, v4, v7}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1933
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v5, v7

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1962
    :goto_0
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1964
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v4, v0

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    :cond_6
    :goto_1
    move v4, v7

    .line 1985
    .end local v0           #diff:I
    .end local v1           #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .end local v2           #spannableChar:[C
    .end local v3           #spannableString:Ljava/lang/String;
    :goto_2
    return v4

    .line 1858
    :cond_7
    const/16 v4, 0x43

    if-ne p1, v4, :cond_3

    .line 1862
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_2

    .line 1943
    .restart local v0       #diff:I
    .restart local v1       #prevSpanTextBeforeStartOffset:Ljava/lang/String;
    .restart local v2       #spannableChar:[C
    .restart local v3       #spannableString:Ljava/lang/String;
    :cond_8
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0

    .line 1955
    :cond_9
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1957
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0

    .line 1966
    :cond_a
    if-gez v0, :cond_6

    .line 1970
    const-string v4, "InsertText"

    iget-object v4, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v5, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v6, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v8, v4}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1972
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1974
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1976
    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    goto :goto_1

    .line 1985
    .end local v0           #diff:I
    :cond_b
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_2
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 2046
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1995
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_3

    .line 1999
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->mShiftKeyIsPressed:Z

    .line 2010
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v0, :cond_2

    .line 2014
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 2020
    :cond_2
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    if-eqz v0, :cond_4

    .line 2024
    iget-object v0, p0, Landroid/webkit/HtmlComposerView;->mInput:Landroid/text/method/TextKeyListener;

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/text/method/TextKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2026
    const/4 v0, 0x1

    .line 2029
    :goto_0
    return v0

    .line 2001
    :cond_3
    const/16 v0, 0x43

    if-ne p1, v0, :cond_1

    .line 2005
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 2029
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRecieveWebviewTouchUp()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 1304
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "input_method"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1312
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->mHtmlComposerInputConnection:Landroid/webkit/HtmlComposerInputConnection;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    move-object v1, p0

    move v3, v2

    move v5, v4

    .line 1313
    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    .line 1314
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1315
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1325
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1327
    .local v0, ret:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1366
    :cond_0
    :goto_0
    return v0

    .line 1331
    :pswitch_0
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_0

    .line 1337
    :pswitch_1
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    iput-boolean v3, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 1341
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-nez v1, :cond_1

    .line 1343
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1345
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->displaySoftKeyboardForHtmlComposer()V

    .line 1347
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1348
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1350
    invoke-virtual {p0, v2}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    .line 1354
    :cond_1
    invoke-virtual {p0, v3}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1358
    iput-boolean v2, p0, Landroid/webkit/WebView;->mInActionMove:Z

    goto :goto_0

    .line 1327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .parameter "hasWindowFocus"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "InsertText"

    const-string v3, "HtmlComposerView"

    .line 1448
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowFocusChanged(Z)V

    .line 1450
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1452
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->requestFocus()Z

    .line 1454
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1458
    :cond_0
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isViewInFocus:Z

    if-nez v1, :cond_1

    .line 1462
    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 1466
    :cond_1
    if-nez p1, :cond_5

    .line 1470
    iget-boolean v1, p0, Landroid/webkit/WebView;->bShowSingleCursorHandler:Z

    if-ne v5, v1, :cond_2

    .line 1472
    iput v6, p0, Landroid/webkit/WebView;->iTimer:I

    .line 1474
    iput-boolean v6, p0, Landroid/webkit/WebView;->mActionMoveSCH:Z

    .line 1476
    iput-boolean v6, p0, Landroid/webkit/WebView;->bSCHvisibleonFocus:Z

    .line 1480
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v5, v1, :cond_3

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v1, :cond_4

    .line 1484
    :cond_3
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iput v1, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    .line 1486
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1489
    const-string v1, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged WindowFocus = false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    :cond_4
    :goto_0
    return-void

    .line 1497
    :cond_5
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-eq v5, v1, :cond_6

    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v1, :cond_a

    .line 1501
    :cond_6
    const-string v1, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged WindowFocus = true, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    if-ltz v1, :cond_b

    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-ltz v1, :cond_b

    .line 1508
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 1524
    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->prevlen:I

    sub-int v0, v1, v2

    .line 1537
    .local v0, diff:I
    if-lez v0, :cond_c

    .line 1541
    const-string v1, "InsertText"

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1568
    :cond_7
    :goto_1
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    .line 1570
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    .line 1573
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    if-ne v5, v1, :cond_8

    .line 1575
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->mSymKeyIsPressed:Z

    .line 1577
    :cond_8
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    if-ne v5, v1, :cond_9

    .line 1579
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->mKeyIsLongPressed:Z

    .line 1582
    :cond_9
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    .line 1587
    .end local v0           #diff:I
    :cond_a
    iget-boolean v1, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    if-ne v5, v1, :cond_4

    .line 1589
    iput-boolean v6, p0, Landroid/webkit/HtmlComposerView;->isContextMenuVisible:Z

    goto :goto_0

    .line 1516
    :cond_b
    const-string v1, "HtmlComposerView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged mCurSelStart= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelStart:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSelEnd= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1547
    .restart local v0       #diff:I
    :cond_c
    if-nez v0, :cond_7

    .line 1551
    iget v1, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    if-lez v1, :cond_7

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->prevSpanComposerText:Ljava/lang/String;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v2, v5

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v3, v5

    iget v4, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    invoke-virtual {v2, v3, v4}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    .line 1557
    const-string v1, ""

    invoke-virtual {p0, v1, v5}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 1559
    const-string v1, "InsertText"

    iget-object v1, p0, Landroid/webkit/HtmlComposerView;->spanComposerText:Landroid/text/SpannableStringBuilder;

    iget v2, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    sub-int/2addr v2, v5

    iget v3, p0, Landroid/webkit/HtmlComposerView;->mCurSelEnd:I

    add-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto/16 :goto_1
.end method

.method public paste()V
    .locals 2

    .prologue
    .line 1130
    const-string v0, "Paste"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    return-void
.end method

.method public redo()V
    .locals 2

    .prologue
    .line 1216
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1217
    const-string v0, "Redo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1218
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1219
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1220
    return-void
.end method

.method public selectAll()V
    .locals 2

    .prologue
    .line 1138
    const-string v0, "SelectAll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    return-void
.end method

.method declared-synchronized setComposingState(Z)V
    .locals 1
    .parameter "isInComposingState"

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->isInComposingState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCursorPressed(Z)V
    .locals 0
    .parameter "IsPressed"

    .prologue
    .line 271
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mIsTouchedCursor:Z

    .line 273
    return-void
.end method

.method public setEditableSelection(II)V
    .locals 0
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1183
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1185
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->setEditableSelection(II)V

    .line 1191
    :cond_0
    return-void
.end method

.method public setEmoji(Z)V
    .locals 0
    .parameter "bIsActive"

    .prologue
    .line 1711
    iput-boolean p1, p0, Landroid/webkit/HtmlComposerView;->mEmojiIsActive:Z

    .line 1713
    return-void
.end method

.method public setImeOptions(I)V
    .locals 0
    .parameter "imeOption"

    .prologue
    .line 1608
    iput p1, p0, Landroid/webkit/HtmlComposerView;->imeOptions:I

    .line 1610
    return-void
.end method

.method public setMaxHtmlLength(I)V
    .locals 1
    .parameter "maxHtmlLength"

    .prologue
    .line 294
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mMaxHtmlLength:I

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerView;->ignoreMaxLength:Z

    .line 298
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .parameter "content"

    .prologue
    .line 1687
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clear()V

    .line 1689
    sget-object v0, Landroid/webkit/HtmlComposerView$InsertionPosition;->INSERT_AT_BEGINING:Landroid/webkit/HtmlComposerView$InsertionPosition;

    invoke-virtual {p0, p1, v0}, Landroid/webkit/HtmlComposerView;->insertContent(Ljava/lang/CharSequence;Landroid/webkit/HtmlComposerView$InsertionPosition;)V

    .line 1691
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .locals 0
    .parameter "viewWidth"

    .prologue
    .line 258
    iput p1, p0, Landroid/webkit/HtmlComposerView;->mViewWidth:I

    .line 262
    return-void
.end method

.method public undo()V
    .locals 2

    .prologue
    .line 1209
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 1210
    const-string v0, "Undo"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 1212
    invoke-direct {p0}, Landroid/webkit/HtmlComposerView;->restartIMEByHtmlComposerView()V

    .line 1213
    return-void
.end method
