.class Lcom/android/internal/policy/impl/GlobalActions$13;
.super Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->createDialog()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;IIIII)V
    .locals 6
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/GlobalActions$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 5
    .parameter "on"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    #getter for: Lcom/android/internal/policy/impl/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/GlobalActions;->access$000(Lcom/android/internal/policy/impl/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 71
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const/4 v2, 0x1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/net/ConnectivityManager;->setBackgroundDataSetting(Z)V

    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method willCreate()V
    .locals 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    const v0, 0x108048d

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$13;->mEnabledIconResId:I

    .line 138
    return-void
.end method
