.class public Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "SystemSettingsButton.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    .line 10
    const-string v0, "toggleSystemSettings"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mType:Ljava/lang/String;

    .line 11
    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mState:I

    .line 13
    return-void
.end method

.method private animateCollapse()V
    .locals 3

    .prologue
    .line 378
    iget-object v2, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mView:Landroid/view/View;

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

.method private startSystemSettings()V
    .locals 3

    .prologue
    .line 2210
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->dismissKeyguardOnNextActivity()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2213
    :goto_0
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2216
    return-void

    .line 2211
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method protected getText()I
    .locals 1

    .prologue
    .line 39
    const v0, 0x7f080013

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->startSystemSettings()V

    .line 53
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->animateCollapse()V

    .line 55
    return-void
.end method

.method protected updateState()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x3

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mState:I

    .line 58
    const v0, 0x7f02011b

    iput v0, p0, Lcom/lidroid/systemui/quickpanel/SystemSettingsButton;->mIcon:I

    .line 60
    return-void
.end method
