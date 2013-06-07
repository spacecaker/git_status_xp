.class Lcom/android/settings/SecuritySettings$3$1;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings$3;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SecuritySettings$3;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings$3;)V
    .locals 0
    .parameter

    .prologue
    .line 939
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$3$1;->this$1:Lcom/android/settings/SecuritySettings$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 941
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 942
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "call_from_mt_screen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 943
    const-string v1, "com.osp.app.signin.CalledFrom"

    const/16 v2, 0x5c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 944
    const-string v1, "com.osp.app.signin"

    const-string v2, "com.osp.app.signin.AccountView"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 945
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$3$1;->this$1:Lcom/android/settings/SecuritySettings$3;

    iget-object v1, v1, Lcom/android/settings/SecuritySettings$3;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 946
    return-void
.end method
