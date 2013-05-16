.class public Lcom/android/systemui/statusbar/policy/NetworkModeController;
.super Ljava/lang/Object;
.source "NetworkModeController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCheckBox:Landroid/widget/CompoundButton;

.field private mContext:Landroid/content/Context;

.field private mNetworkMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/CompoundButton;)V
    .locals 1
    .parameter "context"
    .parameter "checkbox"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkModeController;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/NetworkModeController;->getNetworkMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkModeController;->mNetworkMode:Z

    .line 43
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/NetworkModeController;->mCheckBox:Landroid/widget/CompoundButton;

    .line 44
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/NetworkModeController;->mNetworkMode:Z

    invoke-virtual {p2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 45
    invoke-virtual {p2, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 46
    return-void
.end method

.method private getNetworkMode()Z
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x63

    .line 56
    .local v0, state:I
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 58
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkModeController;->networkModeToState(I)Z

    move-result v1

    return v1

    .line 57
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static networkModeToState(I)Z
    .locals 1
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 62
    packed-switch p0, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return v0

    .line 64
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 62
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "view"
    .parameter "checked"

    .prologue
    .line 49
    if-eqz p2, :cond_0

    const/4 v0, 0x0

    .line 50
    .local v0, networkType:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 51
    return-void

    .line 49
    .end local v0           #networkType:I
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
