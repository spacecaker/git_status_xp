.class public Lcom/lidroid/systemui/quickpanel/RebootButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "RebootButton.java"


# instance fields
.field private action:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    .line 18
    const-string v0, "toggleReboot"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mType:Ljava/lang/String;

    .line 19
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mState:I

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/lidroid/systemui/quickpanel/RebootButton;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 14
    iget-object v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lidroid/systemui/quickpanel/RebootButton;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    iput-object p1, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    return-object p1
.end method

.method private animateCollapse(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 32
    const-string v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 33
    .local v0, sbm:Landroid/app/StatusBarManager;
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapse()V

    .line 34
    return-void
.end method

.method private reboot()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 37
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 38
    .local v1, context:Landroid/content/Context;
    invoke-direct {p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton;->animateCollapse(Landroid/content/Context;)V

    .line 40
    const-string v3, "now"

    iput-object v3, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->action:Ljava/lang/String;

    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x1080027

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 44
    const v3, 0x7f090101

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 46
    const v3, 0x7f060005

    new-instance v4, Lcom/lidroid/systemui/quickpanel/RebootButton$1;

    invoke-direct {v4, p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton$1;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 53
    const v3, 0x104000a

    new-instance v4, Lcom/lidroid/systemui/quickpanel/RebootButton$2;

    invoke-direct {v4, p0, v1}, Lcom/lidroid/systemui/quickpanel/RebootButton$2;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;Landroid/content/Context;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 60
    const/high16 v3, 0x104

    new-instance v4, Lcom/lidroid/systemui/quickpanel/RebootButton$3;

    invoke-direct {v4, p0}, Lcom/lidroid/systemui/quickpanel/RebootButton$3;-><init>(Lcom/lidroid/systemui/quickpanel/RebootButton;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 67
    .local v2, dlg:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d8

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 68
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 69
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 70
    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 29
    const v0, 0x7f0900fb

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/RebootButton;->reboot()V

    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x2

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mState:I

    .line 24
    const v0, 0x7f020152

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/RebootButton;->mIcon:I

    .line 25
    return-void
.end method
