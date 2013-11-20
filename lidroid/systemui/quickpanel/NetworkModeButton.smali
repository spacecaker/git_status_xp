.class public Lcom/lidroid/systemui/quickpanel/NetworkModeButton;
.super Lcom/lidroid/systemui/quickpanel/PowerButton;
.source "NetworkModeButton.java"


# static fields
.field private static final CM_MODE_3GSM_ONLY:I = 0x1

.field private static final CM_MODE_3G_ONLY:I = 0x0

.field private static final CM_MODE_3G_PREFERRED:I = 0x2

.field private static final OBSERVED_URIS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "NetworkModeButton"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x0

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    .line 23
    sget-object v0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "preferred_network_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/lidroid/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleNetworkMode"

    iput-object v0, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mType:Ljava/lang/String;

    return-void
.end method

.method private static getCurrentNetworkMode(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 167
    const/16 v0, 0x0

    .line 169
    .local v0, state:I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 173
    :goto_0
    return v0

    .line 171
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    sget-object v0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 93
    const v0, 0x7f0900ed

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.Settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 130
    const/4 v1, 0x1

    return v1
.end method

.method protected toggleState()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const-string v2, "com.serajr.powertoggles.POWERTOGGLES_CHANGE_NETWORK_MODE"

    .line 83
    iget-object v3, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 84
    .local v0, context:Landroid/content/Context;
    invoke-static {v3}, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->getCurrentNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 85
    add-int v0, v0, v1

    if-le v0, v4, :cond_0

    const/4 v0, 0x0

    .line 86
    :cond_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.serajr.powertoggles.POWERTOGGLES_NEW_NETWORK_MODE"

    invoke-virtual {v4, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected updateState()V
    .locals 3

    .line 90
    iget-object v1, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->getCurrentNetworkMode(Landroid/content/Context;)I

    move-result v0

    .line 92
    const v1, 0x0

    if-ne v0, v1, :cond_0

    const v2, 0x7f02016e

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mIcon:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mState:I

    .line 93
    :goto_0
    return-void

    .line 94
    :cond_0
    const v1, 0x1

    if-ne v0, v1, :cond_1

    const v2, 0x7f02016d

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mIcon:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mState:I

    goto :goto_0

    .line 96
    :cond_1
    const v2, 0x7f02016f

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mIcon:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/lidroid/systemui/quickpanel/NetworkModeButton;->mState:I

    goto :goto_0
.end method
