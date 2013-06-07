.class public Lcom/android/settings/ChooseLockPassword;
.super Landroid/app/Activity;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$Stage;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mFirstPin:Ljava/lang/String;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mRequestedQuality:I

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 50
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 52
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 54
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 72
    return-void
.end method

.method private handleNext()V
    .locals 7

    .prologue
    .line 258
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 259
    .local v2, pin:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 286
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    const/4 v1, 0x0

    .line 263
    .local v1, errorMsg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_3

    .line 264
    invoke-direct {p0, v2}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 265
    if-nez v1, :cond_2

    .line 266
    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 267
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 268
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 284
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-direct {p0, v1, v4}, Lcom/android/settings/ChooseLockPassword;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V

    goto :goto_0

    .line 270
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_2

    .line 271
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 272
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->clearLock()V

    .line 273
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;I)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_1

    .line 276
    :cond_4
    sget-object v4, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 277
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 278
    .local v3, tmp:Ljava/lang/CharSequence;
    if-eqz v3, :cond_2

    .line 279
    move-object v0, v3

    check-cast v0, Landroid/text/Spannable;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_1
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/high16 v1, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 129
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setContentView(I)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 134
    const v0, 0x7f0b0021

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    .line 137
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 140
    const v0, 0x7f0b001f

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 144
    const/high16 v0, 0x4

    iget v1, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x5

    iget v1, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    .line 146
    new-instance v0, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 147
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v1, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v1, :cond_2

    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x1070016

    :goto_2
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setVibratePattern(I)V

    .line 153
    const v0, 0x7f0b001d

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    .line 154
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 155
    return-void

    :cond_1
    move v0, v3

    .line 144
    goto :goto_0

    :cond_2
    move v1, v4

    .line 147
    goto :goto_1

    :cond_3
    move v1, v3

    .line 150
    goto :goto_2
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    sget-object v0, Lcom/android/settings/ChooseLockPassword;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/ChooseLockPassword$1;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/ChooseLockPassword$1;-><init>(Lcom/android/settings/ChooseLockPassword;Lcom/android/settings/ChooseLockPassword$Stage;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    return-void
.end method

.method private updateUi()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 322
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, password:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 324
    .local v1, length:I
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v4, v5, :cond_3

    if-lez v1, :cond_3

    .line 325
    iget v4, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v1, v4, :cond_1

    .line 326
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0800f9

    :goto_0
    new-array v5, v6, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 328
    .local v2, msg:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 344
    .end local v2           #msg:Ljava/lang/String;
    :goto_1
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$Stage;->buttonText:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 345
    return-void

    .line 326
    :cond_0
    const v4, 0x7f0800fa

    goto :goto_0

    .line 331
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/settings/ChooseLockPassword;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, error:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 333
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 336
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    const v5, 0x7f0800fb

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 337
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 341
    .end local v0           #error:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v5, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$Stage;->alphaHint:I

    :goto_2
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 342
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword;->mNextButton:Landroid/widget/Button;

    if-lez v1, :cond_5

    move v5, v6

    :goto_3
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 341
    :cond_4
    iget-object v5, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    iget v5, v5, Lcom/android/settings/ChooseLockPassword$Stage;->numericHint:I

    goto :goto_2

    :cond_5
    move v5, v7

    .line 342
    goto :goto_3
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "password"

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 207
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v8, v9, :cond_1

    .line 208
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v8, :cond_0

    const v8, 0x7f0800f9

    :goto_0
    new-array v9, v10, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 254
    :goto_1
    return-object v8

    .line 208
    :cond_0
    const v8, 0x7f0800fa

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    if-le v8, v9, :cond_3

    .line 213
    iget-boolean v8, p0, Lcom/android/settings/ChooseLockPassword;->mIsAlphaMode:Z

    if-eqz v8, :cond_2

    const v8, 0x7f0800fd

    :goto_2
    new-array v9, v10, [Ljava/lang/Object;

    iget v10, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/ChooseLockPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    const v8, 0x7f0800fe

    goto :goto_2

    .line 217
    :cond_3
    const/4 v3, 0x0

    .line 218
    .local v3, hasAlpha:Z
    const/4 v4, 0x0

    .line 219
    .local v4, hasDigit:Z
    const/4 v5, 0x0

    .line 220
    .local v5, hasSymbol:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_a

    .line 221
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 223
    .local v2, c:C
    const/16 v8, 0x20

    if-le v2, v8, :cond_4

    const/16 v8, 0x7f

    if-le v2, v8, :cond_5

    .line 224
    :cond_4
    const v8, 0x7f080100

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 226
    :cond_5
    const/16 v8, 0x30

    if-lt v2, v8, :cond_6

    const/16 v8, 0x39

    if-gt v2, v8, :cond_6

    .line 227
    const/4 v4, 0x1

    .line 220
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 228
    :cond_6
    const/16 v8, 0x41

    if-lt v2, v8, :cond_7

    const/16 v8, 0x5a

    if-le v2, v8, :cond_8

    :cond_7
    const/16 v8, 0x61

    if-lt v2, v8, :cond_9

    const/16 v8, 0x7a

    if-gt v2, v8, :cond_9

    .line 229
    :cond_8
    const/4 v3, 0x1

    goto :goto_4

    .line 231
    :cond_9
    const/4 v5, 0x1

    goto :goto_4

    .line 234
    .end local v2           #c:C
    :cond_a
    const/high16 v8, 0x2

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v8, v9, :cond_b

    or-int v8, v3, v5

    if-eqz v8, :cond_b

    .line 237
    const v8, 0x7f0800ff

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 239
    :cond_b
    const/high16 v8, 0x4

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v8, v9, :cond_d

    move v0, v10

    .line 241
    .local v0, alphabetic:Z
    :goto_5
    const/high16 v8, 0x5

    iget v9, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ne v8, v9, :cond_e

    move v1, v10

    .line 243
    .local v1, alphanumeric:Z
    :goto_6
    const/4 v7, 0x0

    .line 244
    .local v7, symbolic:Z
    if-nez v0, :cond_c

    if-eqz v1, :cond_f

    :cond_c
    if-nez v3, :cond_f

    .line 245
    const v8, 0x7f080101

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    .end local v7           #symbolic:Z
    :cond_d
    move v0, v11

    .line 239
    goto :goto_5

    .restart local v0       #alphabetic:Z
    :cond_e
    move v1, v11

    .line 241
    goto :goto_6

    .line 247
    .restart local v1       #alphanumeric:Z
    .restart local v7       #symbolic:Z
    :cond_f
    if-eqz v1, :cond_10

    if-nez v4, :cond_10

    .line 248
    const v8, 0x7f080102

    invoke-virtual {p0, v8}, Lcom/android/settings/ChooseLockPassword;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 254
    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$Stage;

    if-ne v0, v1, :cond_0

    .line 350
    sget-object v0, Lcom/android/settings/ChooseLockPassword$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 353
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 357
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    packed-switch p1, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 188
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 298
    :goto_0
    return-void

    .line 291
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->finish()V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x7f0b0021
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.password_type"

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.password_min"

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "lockscreen.password_max"

    iget v5, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMaxLength:I

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "confirm_credentials"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 109
    .local v0, confirmCredentials:Z
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    .line 110
    .local v2, minMode:I
    iget v3, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    if-ge v3, v2, :cond_0

    .line 111
    iput v2, p0, Lcom/android/settings/ChooseLockPassword;->mRequestedQuality:I

    .line 113
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v1

    .line 114
    .local v1, minLength:I
    iget v3, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    if-ge v3, v1, :cond_1

    .line 115
    iput v1, p0, Lcom/android/settings/ChooseLockPassword;->mPasswordMinLength:I

    .line 117
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->initViews()V

    .line 118
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 119
    if-nez p1, :cond_2

    .line 120
    sget-object v3, Lcom/android/settings/ChooseLockPassword$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 121
    if-eqz v0, :cond_2

    .line 122
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4, v6, v6}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 126
    :cond_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 311
    if-nez p2, :cond_0

    .line 312
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->handleNext()V

    .line 313
    const/4 v0, 0x1

    .line 315
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 174
    const-string v1, "ui_stage"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, state:Ljava/lang/String;
    const-string v1, "first_pin"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    .line 176
    if-eqz v0, :cond_0

    .line 177
    invoke-static {v0}, Lcom/android/settings/ChooseLockPassword$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$Stage;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 178
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 180
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 160
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword;->updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 162
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 167
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 361
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword;->mUiStage:Lcom/android/settings/ChooseLockPassword$Stage;

    .line 198
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword;->updateUi()V

    .line 199
    return-void
.end method
