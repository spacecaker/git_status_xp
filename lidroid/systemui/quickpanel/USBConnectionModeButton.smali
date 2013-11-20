.class public Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "USBConnectionModeButton.java"


# instance fields
.field private usbMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 10
    const-string v0, "mass_storage"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->usbMode:Ljava/lang/String;

    .line 13
    const-string v0, "toggleUSBConnectionMode"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->mType:Ljava/lang/String;

    .line 14
    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->mState:I

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 9
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->usbMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 9
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->usbMode:Ljava/lang/String;

    return-object p1
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 379
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 380
    return-void
.end method

.method private changeMode()V
    .locals 6

    .prologue
    .line 27
    const-string v3, "mass_storage"

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->usbMode:Ljava/lang/String;

    .line 28
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 29
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->getUSBConnectionTitle()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 33
    const v3, 0x7f060007

    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->getCurrentUSBConnectionMode()I

    move-result v4

    new-instance v5, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$1;

    invoke-direct {v5, p0, v1}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    const v3, 0x104000a

    new-instance v4, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;

    invoke-direct {v4, p0, v1}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$2;-><init>(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 47
    const/high16 v3, 0x104

    new-instance v4, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$3;

    invoke-direct {v4, p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton$3;-><init>(Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 54
    .local v2, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 55
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 56
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->animateCollapse()V

    .line 57
    return-void
.end method

.method private getCurrentUSBConnectionMode()I
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, mode:I
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->getUSBConnectionMode()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, usbMode:Ljava/lang/String;
    const-string v2, "mtp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    const v0, 0x0

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    const-string v2, "mass_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const v0, 0x1

    goto :goto_0
.end method

.method private getUSBConnectionIcon()I
    .locals 3

    .prologue
    .line 327
    const/4 v0, 0x0

    .line 329
    .local v0, icon:I
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->getUSBConnectionMode()Ljava/lang/String;

    move-result-object v1

    .line 330
    .local v1, usbMode:Ljava/lang/String;
    const-string v2, "mtp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    const v0, 0x7f02014d

    .line 340
    :cond_0
    :goto_0
    return v0

    .line 334
    :cond_1
    const-string v2, "mass_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    const v0, 0x7f020163

    goto :goto_0
.end method

.method private getUSBConnectionMode()Ljava/lang/String;
    .locals 7

    .prologue
    .line 238
    const-string v2, ""

    .line 242
    .local v2, line:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 243
    .local v4, rt:Ljava/lang/Runtime;
    const-string v5, "getprop persist.sys.usb.config"

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 244
    .local v3, pr:Ljava/lang/Process;
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 246
    .local v1, input:Ljava/io/BufferedReader;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 247
    const-string v5, "Property:"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 258
    .end local v1           #input:Ljava/io/BufferedReader;
    .end local v3           #pr:Ljava/lang/Process;
    .end local v4           #rt:Ljava/lang/Runtime;
    :goto_0
    return-object v2

    .line 252
    :catch_0
    move-exception v0

    .line 254
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getUSBConnectionTitle()I
    .locals 3

    .prologue
    .line 307
    const/4 v0, 0x0

    .line 309
    .local v0, title:I
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->getUSBConnectionMode()Ljava/lang/String;

    move-result-object v1

    .line 310
    .local v1, usbMode:Ljava/lang/String;
    const-string v2, "mtp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    const v0, 0x7f09010f

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 314
    :cond_1
    const-string v2, "mass_storage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    const v0, 0x7f090110

    goto :goto_0
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 24
    const v0, 0x7f09010e

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->changeMode()V

    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->mState:I

    .line 19
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->getUSBConnectionIcon()I

    move-result v0

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/USBConnectionModeButton;->mIcon:I

    .line 20
    return-void
.end method
