.class Lcom/sec/android/app/twlauncher/LauncherModel$3;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

.field final synthetic val$callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

.field final synthetic val$removedFinal:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 549
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$3;->this$0:Lcom/sec/android/app/twlauncher/LauncherModel;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$3;->val$callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$3;->val$removedFinal:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/LauncherModel$3;->val$callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$3;->val$removedFinal:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindAppsRemoved(Ljava/util/ArrayList;)V

    .line 552
    return-void
.end method
