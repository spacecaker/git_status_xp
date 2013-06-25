.class public Landroid/webkit/HtmlComposerInputConnection;
.super Ljava/lang/Object;
.source "HtmlComposerInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    }
.end annotation


# static fields
.field static final ALIGN_LEFT:I = 0x1

.field static final ALIGN_NONE:I = 0x0

.field static final ALIGN_RIGHT:I = 0x2

.field private static final BACKGROUND_COLOR_BLUE:I = -0xf0001

.field private static final BACKGROUND_COLOR_GREEN:I = -0x993256

.field private static final BACKGROUND_COLOR_PURPLE:I = -0x777701

.field private static final BACKGROUND_COLOR_SKYBLUE:I = -0x604933

.field static final COMPOSING:Ljava/lang/Object; = null

.field static final LOGTAG:Ljava/lang/String; = "HtmlComposerInputConnection"


# instance fields
.field final MAX_SPANS:I

.field private bBeginBatchEdit:Z

.field bShadeColor:Z

.field composingEnd:I

.field composingStart:I

.field curSelEnd:I

.field curSelStart:I

.field currCompText:Ljava/lang/CharSequence;

.field isInComposingState:Z

.field private mBGColorSpans:[Landroid/text/style/BackgroundColorSpan;

.field private mBackGroundColorSpan:[I

.field mBatchEditNesting:I

.field private mColorSpans:[Landroid/text/style/ForegroundColorSpan;

.field private mCursorPosition:I

.field private mDefaultComposingSpans:[Ljava/lang/Object;

.field mTargetView:Landroid/webkit/HtmlComposerView;

.field mTargetViewAlign:I

.field spanData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Landroid/webkit/ComposingText;

    invoke-direct {v0}, Landroid/webkit/ComposingText;-><init>()V

    sput-object v0, Landroid/webkit/HtmlComposerInputConnection;->COMPOSING:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/HtmlComposerView;)V
    .locals 3
    .parameter "targetView"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 48
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 49
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 50
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 57
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetViewAlign:I

    .line 59
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bShadeColor:Z

    .line 60
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBackGroundColorSpan:[I

    .line 70
    iput v2, p0, Landroid/webkit/HtmlComposerInputConnection;->mCursorPosition:I

    .line 71
    const/16 v0, 0xff

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->MAX_SPANS:I

    .line 78
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 89
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 90
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 91
    iput v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 92
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    .line 93
    return-void
.end method

.method private replaceTextToHtml(Ljava/lang/CharSequence;IZ)V
    .locals 12
    .parameter "text"
    .parameter "newCursorPosition"
    .parameter "composing"

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    .line 475
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v7, :cond_1

    .line 567
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    const/4 v5, 0x0

    .line 480
    .local v5, sp:Landroid/text/Spanned;
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 481
    .local v1, a:I
    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 483
    .local v2, b:I
    if-ne v1, v10, :cond_2

    if-ne v2, v10, :cond_2

    .line 484
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 486
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 487
    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 491
    :cond_2
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->clear()V

    .line 492
    if-eqz p1, :cond_0

    .line 494
    instance-of v7, p1, Landroid/text/Spanned;

    if-eqz v7, :cond_6

    .line 495
    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object v5, v0

    .line 496
    invoke-static {v5}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v3

    .line 497
    .local v3, htmltext:Ljava/lang/String;
    invoke-virtual {p0, v5}, Landroid/webkit/HtmlComposerInputConnection;->getSpanData(Landroid/text/Spanned;)V

    .line 513
    :cond_3
    :goto_1
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v8, p2, p3, v9}, Landroid/webkit/HtmlComposerView;->insertTextContent(Ljava/lang/String;IZLjava/util/Vector;)Landroid/webkit/WebView$SelectionOffset;

    move-result-object v4

    .line 525
    .local v4, m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    if-eqz p3, :cond_7

    .line 528
    iget v7, v4, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v7, v1

    iput v7, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 529
    iget v7, v4, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v7, v1

    iput v7, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 537
    :goto_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    add-int/2addr v1, v7

    .line 539
    if-lez p2, :cond_8

    .line 540
    const/4 v7, 0x1

    sub-int v7, v1, v7

    add-int/2addr v7, p2

    iput v7, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 553
    :goto_3
    iget v7, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v7, :cond_4

    .line 554
    iput v11, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 556
    :cond_4
    iget v7, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v7, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 558
    iget v7, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v8, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    if-ne v7, v8, :cond_5

    iget v7, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v8, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    if-ne v7, v8, :cond_5

    .line 559
    iput v10, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 560
    iput v10, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 563
    :cond_5
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 564
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v7}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    goto :goto_0

    .line 501
    .end local v3           #htmltext:Ljava/lang/String;
    .end local v4           #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    .restart local v3       #htmltext:Ljava/lang/String;
    if-eqz p3, :cond_3

    .line 503
    new-instance v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v6, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 504
    .local v6, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v11, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 505
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iput v7, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 506
    iput-boolean v11, v6, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 507
    iget-object v7, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 533
    .end local v6           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    .restart local v4       #m_selectionOffset:Landroid/webkit/WebView$SelectionOffset;
    :cond_7
    iput v10, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 534
    iput v10, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    goto :goto_2

    .line 542
    :cond_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int v7, v1, v7

    add-int/2addr v7, p2

    iput v7, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_3
.end method

.method private updateInputMethodSelection()V
    .locals 6

    .prologue
    .line 109
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    invoke-virtual {v1, v2, v3}, Landroid/webkit/HtmlComposerView;->updateIMSelectionToEditor(II)V

    .line 112
    :cond_0
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v1, :cond_2

    .line 113
    const-string v1, "HtmlComposerInputConnection"

    const-string/jumbo v2, "return without updateInputMethodSelection as  bBeginBatchEdit is TRUE.........."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 117
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    iget v2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iget v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    iget v5, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    invoke-virtual/range {v0 .. v5}, Landroid/view/inputmethod/InputMethodManager;->updateSelection(Landroid/view/View;IIII)V

    goto :goto_0
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 134
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 135
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 136
    return v1
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 140
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "clearMetaKeyStates"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    const/4 v0, 0x1

    return v0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "arg0"

    .prologue
    .line 145
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "commitCompletion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const/4 v0, 0x1

    return v0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    move v0, v1

    .line 166
    :goto_0
    return v0

    .line 152
    :cond_0
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 153
    invoke-direct {p0, p1, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 4
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    const/4 v3, 0x0

    .line 170
    const-string v0, "HtmlComposerInputConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSurroundingText left "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rgh "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    move v0, v3

    .line 180
    :goto_0
    return v0

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->deleteSurroundingText(II)V

    .line 174
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 175
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v0, :cond_1

    .line 176
    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 178
    :cond_1
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 179
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 180
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HtmlComposerInputConnection;->bBeginBatchEdit:Z

    .line 185
    iget v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    .line 186
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 187
    return v1
.end method

.method public finishComposingText()Z
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 192
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    .line 197
    const-string v3, "HtmlComposerInputConnection"

    const-string v4, "getCursorCapsMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget v1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 199
    .local v1, arbOffset:I
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, textBeforCursor:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 202
    .local v0, a:I
    invoke-static {v2, v0, p1}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v3

    return v3
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 7
    .parameter "request"
    .parameter "flags"

    .prologue
    const/4 v6, 0x0

    .line 207
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 238
    :goto_0
    return-object v4

    .line 209
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->beginBatchEdit()Z

    .line 210
    new-instance v1, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    .line 211
    .local v1, outText:Landroid/view/inputmethod/ExtractedText;
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    invoke-virtual {p0, v4, v6}, Landroid/webkit/HtmlComposerInputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    .local v3, textBeforCursor:Ljava/lang/String;
    const/16 v4, 0xf

    invoke-virtual {p0, v4, v6}, Landroid/webkit/HtmlComposerInputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 214
    .local v2, textAfetrCursor:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v6}, Landroid/webkit/HtmlComposerInputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 216
    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    if-nez v4, :cond_1

    iget-object v4, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const-string v5, ""

    if-ne v4, v5, :cond_2

    .line 218
    :cond_1
    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->flags:I

    .line 219
    iput v6, v1, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    .line 220
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    .line 221
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    .line 223
    const/4 v4, -0x1

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    iput v4, v1, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    .line 227
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->endBatchEdit()Z

    .line 229
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mBatchEditNesting:I

    if-lez v4, :cond_3

    .line 230
    const-string v4, "HtmlComposerInputConnection"

    const-string v5, "getExtractedText return without update"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v1

    .line 231
    goto :goto_0

    .line 234
    :cond_3
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 235
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 236
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v4, v6, v1}, Landroid/view/inputmethod/InputMethodManager;->updateExtractedText(Landroid/view/View;ILandroid/view/inputmethod/ExtractedText;)V

    :cond_4
    move-object v4, v1

    .line 238
    goto :goto_0
.end method

.method public getSelectedText(I)Ljava/lang/CharSequence;
    .locals 3
    .parameter "flags"

    .prologue
    const-string v2, ""

    .line 242
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const-string v1, ""

    move-object v1, v2

    .line 244
    :goto_0
    return-object v1

    .line 243
    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->getSelectionSec()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, textSelected:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v1, ""

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method getSpanData(Landroid/text/Spanned;)V
    .locals 9
    .parameter "text"

    .prologue
    const-class v8, Landroid/text/style/CharacterStyle;

    .line 440
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->clear()V

    .line 441
    invoke-interface {p1}, Landroid/text/Spanned;->length()I

    move-result v3

    .line 443
    .local v3, spanLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_3

    .line 444
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v3, v8}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 445
    .local v2, next:I
    const-class v6, Landroid/text/style/CharacterStyle;

    invoke-interface {p1, v0, v2, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/CharacterStyle;

    .line 447
    .local v4, style:[Landroid/text/style/CharacterStyle;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    array-length v6, v4

    if-ge v1, v6, :cond_2

    .line 448
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/BackgroundColorSpan;

    if-eqz v6, :cond_0

    .line 449
    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 450
    .local v5, tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 451
    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 457
    aget-object v6, v4, v1

    check-cast v6, Landroid/text/style/BackgroundColorSpan;

    invoke-virtual {v6}, Landroid/text/style/BackgroundColorSpan;->getBackgroundColor()I

    move-result v6

    const/high16 v7, 0x100

    add-int/2addr v6, v7

    iput v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->highLightColor:I

    .line 458
    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 459
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_0
    aget-object v6, v4, v1

    instance-of v6, v6, Landroid/text/style/UnderlineSpan;

    if-eqz v6, :cond_1

    .line 463
    new-instance v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;

    invoke-direct {v5, p0}, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;-><init>(Landroid/webkit/HtmlComposerInputConnection;)V

    .line 464
    .restart local v5       #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    iput v0, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->startOffset:I

    .line 465
    iput v2, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->endOffset:I

    .line 466
    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;->isHighlightColor:Z

    .line 467
    iget-object v6, p0, Landroid/webkit/HtmlComposerInputConnection;->spanData:Ljava/util/Vector;

    invoke-virtual {v6, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 447
    .end local v5           #tempSpanData:Landroid/webkit/HtmlComposerInputConnection$SpanDataInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 443
    :cond_2
    move v0, v2

    goto :goto_0

    .line 471
    .end local v1           #j:I
    .end local v2           #next:I
    .end local v4           #style:[Landroid/text/style/CharacterStyle;
    :cond_3
    return-void
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 8
    .parameter "n"
    .parameter "flags"

    .prologue
    const-string v7, ""

    .line 249
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v5, :cond_0

    const-string v5, ""

    move-object v5, v7

    .line 264
    :goto_0
    return-object v5

    .line 250
    :cond_0
    iget-object v5, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v6, Landroid/webkit/WebView$CursorDirection;->FORWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v5, p1, v6}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v4

    .line 251
    .local v4, retText:Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 252
    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 253
    .local v0, arr:[C
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 254
    aget-char v1, v0, v2

    .line 255
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 256
    const/16 v5, 0x20

    aput-char v5, v0, v2

    .line 253
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    .end local v1           #chrVal:C
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([C)V

    .line 260
    .local v3, rText:Ljava/lang/String;
    move-object v4, v3

    .line 264
    .end local v0           #arr:[C
    .end local v2           #i:I
    .end local v3           #rText:Ljava/lang/String;
    :cond_3
    if-nez v4, :cond_4

    const-string v5, ""

    move-object v5, v7

    goto :goto_0

    :cond_4
    move-object v5, v4

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 13
    .parameter "n"
    .parameter "flags"

    .prologue
    const/4 v11, 0x1

    const-string v12, "\n"

    const-string v10, ""

    .line 268
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v8, :cond_0

    const-string v8, ""

    move-object v8, v10

    .line 295
    :goto_0
    return-object v8

    .line 269
    :cond_0
    iget-object v8, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    sget-object v9, Landroid/webkit/WebView$CursorDirection;->BACKWARD:Landroid/webkit/WebView$CursorDirection;

    invoke-virtual {v8, p1, v9}, Landroid/webkit/HtmlComposerView;->getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;

    move-result-object v6

    .line 270
    .local v6, retText:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 271
    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 272
    .local v0, arr:[C
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 273
    aget-char v1, v0, v4

    .line 274
    .local v1, chrVal:C
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 275
    const/16 v8, 0x20

    aput-char v8, v0, v4

    .line 272
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 278
    .end local v1           #chrVal:C
    :cond_2
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([C)V

    .line 279
    .local v5, rText:Ljava/lang/String;
    move-object v6, v5

    .line 281
    .end local v0           #arr:[C
    .end local v4           #i:I
    .end local v5           #rText:Ljava/lang/String;
    :cond_3
    if-nez v6, :cond_4

    const-string v8, ""

    move-object v6, v10

    .line 282
    :cond_4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v8, p1, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-ge v8, v9, :cond_7

    .line 283
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v2, p1, v8

    .line 284
    .local v2, diffLen:I
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .local v7, tempString:Ljava/lang/StringBuilder;
    const-string v8, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    const/4 v3, 0x1

    .local v3, extCnt:I
    :goto_2
    sub-int v8, v2, v11

    if-ge v3, v8, :cond_5

    .line 287
    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 289
    :cond_5
    if-le v2, v11, :cond_6

    .line 290
    const-string v8, "\n"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 295
    .end local v2           #diffLen:I
    .end local v3           #extCnt:I
    .end local v7           #tempString:Ljava/lang/StringBuilder;
    :cond_7
    if-nez v6, :cond_8

    const-string v8, ""

    move-object v8, v10

    goto :goto_0

    :cond_8
    move-object v8, v6

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 299
    const-string v1, "HtmlComposerInputConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "performContextMenuAction "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, retVal:Z
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move v0, v1

    .line 302
    :goto_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v1, :cond_1

    .line 307
    :goto_1
    return v0

    .line 301
    :cond_0
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1, p1}, Landroid/webkit/HtmlComposerView;->onContextMenuItem(I)Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 304
    :cond_1
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/HtmlComposerView;->setCaretForEdit(Z)V

    .line 305
    iget-object v1, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v1}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 306
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelectionWithRandom()V

    goto :goto_1
.end method

.method public performEditorAction(I)Z
    .locals 17
    .parameter "editorAction"

    .prologue
    .line 314
    const-string v2, "HtmlComposerInputConnection"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performEditorAction "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 335
    :goto_0
    return v2

    .line 317
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 318
    .local v3, eventTime:J
    new-instance v2, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-wide v5, v3

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 323
    new-instance v5, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const/4 v10, 0x1

    const/16 v11, 0x42

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x16

    move-wide v8, v3

    invoke-direct/range {v5 .. v16}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 330
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v2, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 331
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    move v2, v0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 332
    invoke-direct/range {p0 .. p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    .line 335
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 339
    const-string v0, "HtmlComposerInputConnection"

    const-string/jumbo v1, "performPrivateCommand"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v0, 0x1

    return v0
.end method

.method public removeComposingSpan()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 102
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 103
    iput v0, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 104
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    .line 106
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 344
    const/4 v0, 0x0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/16 v8, 0x16

    const/16 v5, 0x13

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v9, "InsertText"

    .line 349
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v4, :cond_0

    move v4, v7

    .line 422
    :goto_0
    return v4

    .line 351
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-eq v4, v6, :cond_2

    move v0, v6

    .line 352
    .local v0, down:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 361
    .local v2, keyCode:I
    if-lt v2, v5, :cond_9

    if-gt v2, v8, :cond_9

    .line 362
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->ckeckIfSelectionAtBoundry()I

    move-result v3

    .line 363
    .local v3, selctionAtBoundry:I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 364
    if-eqz v0, :cond_1

    .line 365
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 367
    :cond_1
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v6

    .line 368
    goto :goto_0

    .end local v0           #down:Z
    .end local v2           #keyCode:I
    .end local v3           #selctionAtBoundry:I
    :cond_2
    move v0, v7

    .line 351
    goto :goto_1

    .line 370
    .restart local v0       #down:Z
    .restart local v2       #keyCode:I
    .restart local v3       #selctionAtBoundry:I
    :cond_3
    if-nez v3, :cond_6

    if-eq v2, v8, :cond_4

    const/16 v4, 0x14

    if-ne v2, v4, :cond_6

    .line 371
    :cond_4
    if-eqz v0, :cond_5

    .line 372
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 374
    :cond_5
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v6

    .line 375
    goto :goto_0

    .line 377
    :cond_6
    if-ne v3, v6, :cond_10

    if-eq v2, v5, :cond_7

    const/16 v4, 0x15

    if-ne v2, v4, :cond_10

    .line 378
    :cond_7
    if-eqz v0, :cond_8

    .line 379
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v2}, Landroid/webkit/HtmlComposerView;->handleNavKeys(I)V

    .line 381
    :cond_8
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    move v4, v6

    .line 382
    goto :goto_0

    .line 386
    .end local v3           #selctionAtBoundry:I
    :cond_9
    const/16 v4, 0x3d

    if-ne v4, v2, :cond_b

    .line 387
    if-eqz v0, :cond_a

    .line 388
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    const-string v5, "    "

    invoke-virtual {v4, v9, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4, v6}, Landroid/webkit/HtmlComposerView;->drawSelectionControl(Z)V

    :cond_a
    move v4, v6

    .line 391
    goto :goto_0

    .line 393
    :cond_b
    const/16 v4, 0x42

    if-ne v2, v4, :cond_d

    .line 394
    if-eqz v0, :cond_c

    .line 395
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, "InsertText"

    const-string v5, "\n"

    invoke-virtual {v4, v9, v5}, Landroid/webkit/HtmlComposerView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 397
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    :cond_c
    move v4, v6

    .line 399
    goto/16 :goto_0

    .line 401
    :cond_d
    const/16 v4, 0x43

    if-ne v2, v4, :cond_10

    .line 402
    if-eqz v0, :cond_e

    .line 403
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 404
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    const-string v5, ""

    invoke-virtual {v4, v5, v6}, Landroid/webkit/HtmlComposerView;->commitInputMethodText(Ljava/lang/String;I)V

    .line 405
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    sub-int/2addr v4, v6

    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 406
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    if-gez v4, :cond_f

    move v4, v7

    :goto_2
    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 407
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    iput v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 408
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 409
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->drawSelectionControl()V

    :cond_e
    move v4, v6

    .line 411
    goto/16 :goto_0

    .line 406
    :cond_f
    iget v4, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    goto :goto_2

    .line 414
    :cond_10
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 415
    iget-object v4, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v4}, Landroid/webkit/HtmlComposerView;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 416
    .local v1, h:Landroid/os/Handler;
    if-eqz v1, :cond_11

    .line 417
    const/16 v4, 0x3f3

    invoke-virtual {v1, v4, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_11
    move v4, v6

    .line 422
    goto/16 :goto_0
.end method

.method public setComposingRegion(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v1, 0x0

    .line 570
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    move v0, v1

    .line 575
    :goto_0
    return v0

    .line 571
    :cond_0
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/HtmlComposerView;->setComposingRegion(II)V

    .line 572
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->composingStart:I

    .line 573
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->composingEnd:I

    .line 574
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    move v0, v1

    .line 575
    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    const/4 v1, 0x1

    .line 426
    iput-object p1, p0, Landroid/webkit/HtmlComposerInputConnection;->currCompText:Ljava/lang/CharSequence;

    .line 427
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 436
    :goto_0
    return v0

    .line 429
    :cond_1
    iput-boolean v1, p0, Landroid/webkit/HtmlComposerInputConnection;->isInComposingState:Z

    .line 431
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->selectedType()I

    move-result v0

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0}, Landroid/webkit/HtmlComposerView;->clearComposingSelection()V

    .line 433
    :cond_2
    invoke-direct {p0, p1, p2, v1}, Landroid/webkit/HtmlComposerInputConnection;->replaceTextToHtml(Ljava/lang/CharSequence;IZ)V

    .line 435
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v0, v1}, Landroid/webkit/HtmlComposerView;->setComposingState(Z)V

    move v0, v1

    .line 436
    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 579
    iget-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 584
    :goto_0
    return v0

    .line 581
    :cond_0
    iput p1, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 582
    iput p2, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 583
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 584
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setTargetNull()V
    .locals 2

    .prologue
    .line 96
    const-string v0, "HtmlComposerInputConnection"

    const-string v1, "HtmlComposerInputConnection setTargetNull()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    .line 98
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerInputConnection;->removeComposingSpan()V

    .line 99
    return-void
.end method

.method public updateInputMethodSelectionWithRandom()V
    .locals 4

    .prologue
    .line 124
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 125
    .local v1, randm:Ljava/util/Random;
    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 126
    .local v0, randNum:I
    iget-object v3, p0, Landroid/webkit/HtmlComposerInputConnection;->mTargetView:Landroid/webkit/HtmlComposerView;

    invoke-virtual {v3}, Landroid/webkit/HtmlComposerView;->getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;

    move-result-object v2

    .line 127
    .local v2, selctionOffset:Landroid/webkit/WebView$SelectionOffset;
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->startOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelStart:I

    .line 128
    iget v3, v2, Landroid/webkit/WebView$SelectionOffset;->endOffset:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/webkit/HtmlComposerInputConnection;->curSelEnd:I

    .line 129
    invoke-direct {p0}, Landroid/webkit/HtmlComposerInputConnection;->updateInputMethodSelection()V

    .line 130
    return-void
.end method
