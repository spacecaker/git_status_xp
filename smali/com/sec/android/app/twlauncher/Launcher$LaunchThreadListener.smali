.class Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/twlauncher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchThreadListener"
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter "intent"

    .prologue
    .line 3251
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3252
    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;->mIntent:Landroid/content/Intent;

    .line 3253
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 3256
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3257
    .local v0, cm:Landroid/net/ConnectivityManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 3258
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$LaunchThreadListener;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Launcher;->startActivity(Landroid/content/Intent;)V

    .line 3259
    return-void
.end method
