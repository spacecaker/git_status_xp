.class public Landroid/text/method/CharacterPickerDialog;
.super Landroid/app/Dialog;
.source "CharacterPickerDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/CharacterPickerDialog$OptionsAdapter;
    }
.end annotation


# static fields
.field private static final ACTION_CHARACTERPICKERDIALOG_SHOW_STATE:Ljava/lang/String; = "android.text.method.CHARACTERPICKERDIALOG_SHOW_STATE"

.field private static final ACTION_SYM_CHARACTER_RECEIVED_FROM_CHARACTERPICKERDIALOG:Ljava/lang/String; = "android.intent.action.ACTION_SYM_CHARACTER_RECEIVED_FROM_CHARACTERPICKERDIALOG"

.field private static final INTENT_EXTRA_VISIBLE_STATE:Ljava/lang/String; = "visible"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsert:Z

.field private mOptions:Ljava/lang/String;

.field private mText:Landroid/text/Editable;

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "view"
    .parameter "text"
    .parameter "options"
    .parameter "insert"

    .prologue
    .line 78
    const v1, 0x1030059

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 252
    new-instance v1, Landroid/text/method/CharacterPickerDialog$3;

    invoke-direct {v1, p0}, Landroid/text/method/CharacterPickerDialog$3;-><init>(Landroid/text/method/CharacterPickerDialog;)V

    iput-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    .line 81
    iput-object p3, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    .line 82
    iput-object p4, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    .line 83
    iput-boolean p5, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    .line 84
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 86
    new-instance v1, Landroid/text/method/CharacterPickerDialog$1;

    invoke-direct {v1, p0}, Landroid/text/method/CharacterPickerDialog$1;-><init>(Landroid/text/method/CharacterPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/text/method/CharacterPickerDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 92
    new-instance v1, Landroid/text/method/CharacterPickerDialog$2;

    invoke-direct {v1, p0}, Landroid/text/method/CharacterPickerDialog$2;-><init>(Landroid/text/method/CharacterPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/text/method/CharacterPickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    return-void
.end method

.method static synthetic access$000(Landroid/text/method/CharacterPickerDialog;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/text/method/CharacterPickerDialog;->sendShowState(Z)V

    return-void
.end method

.method static synthetic access$100(Landroid/text/method/CharacterPickerDialog;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$200(Landroid/text/method/CharacterPickerDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    return-object v0
.end method

.method private replaceCharacterAndClose(Ljava/lang/CharSequence;)V
    .locals 4
    .parameter "replace"

    .prologue
    .line 138
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    .line 139
    .local v1, selEnd:I
    iget-boolean v2, p0, Landroid/text/method/CharacterPickerDialog;->mInsert:Z

    if-nez v2, :cond_0

    if-nez v1, :cond_2

    .line 140
    :cond_0
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 149
    :goto_0
    const-string v2, "GT-S5830"

    const-string v3, "GT-B7510"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.ACTION_SYM_CHARACTER_RECEIVED_FROM_CHARACTERPICKERDIALOG"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 157
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    .line 158
    return-void

    .line 142
    :cond_2
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-interface {v2, v3, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0
.end method

.method private sendShowState(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    .line 202
    const-string v1, "CharacterPickerDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendShowState(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 204
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.text.method.CHARACTERPICKERDIALOG_SHOW_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const-string/jumbo v1, "visible"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 207
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Landroid/text/method/CharacterPickerDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->cancel()V

    .line 216
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 165
    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 166
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 167
    .local v0, result:Ljava/lang/CharSequence;
    invoke-direct {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 169
    .end local v0           #result:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 113
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 114
    .local v1, params:Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 115
    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 116
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 118
    const v2, 0x109001e

    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->setContentView(I)V

    .line 120
    const v2, 0x10201b1

    invoke-virtual {p0, v2}, Landroid/text/method/CharacterPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 121
    .local v0, grid:Landroid/widget/GridView;
    new-instance v2, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;

    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/text/method/CharacterPickerDialog$OptionsAdapter;-><init>(Landroid/text/method/CharacterPickerDialog;Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 127
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 133
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mOptions:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, result:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/text/method/CharacterPickerDialog;->replaceCharacterAndClose(Ljava/lang/CharSequence;)V

    .line 135
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 220
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    .line 222
    .local v0, count:I
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_1

    .line 223
    if-lez v0, :cond_1

    .line 224
    iget-object v1, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->dismiss()V

    .line 226
    new-instance v1, Landroid/text/method/SmileyPickerDialog;

    iget-object v2, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/text/method/CharacterPickerDialog;->mView:Landroid/view/View;

    iget-object v4, p0, Landroid/text/method/CharacterPickerDialog;->mText:Landroid/text/Editable;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/text/method/SmileyPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Z)V

    invoke-virtual {v1}, Landroid/text/method/SmileyPickerDialog;->show()V

    :cond_0
    move v1, v5

    .line 237
    :goto_0
    return v1

    .line 232
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 233
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    move v1, v5

    .line 234
    goto :goto_0

    .line 237
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 242
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    invoke-virtual {p0}, Landroid/text/method/CharacterPickerDialog;->onBackPressed()V

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
