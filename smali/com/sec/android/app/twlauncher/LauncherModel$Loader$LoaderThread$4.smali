.class Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->bindWorkspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

.field final synthetic val$chunkSize:I

.field final synthetic val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;II)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    iput p3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->val$start:I

    iput p4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->val$chunkSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1382
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->val$oldCallbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->tryGetCallbacks(Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;)Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;

    move-result-object v0

    .line 1383
    .local v0, callbacks:Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->this$2:Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread;->this$1:Lcom/sec/android/app/twlauncher/LauncherModel$Loader;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    iget v2, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->val$start:I

    iget v3, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->val$start:I

    iget v4, p0, Lcom/sec/android/app/twlauncher/LauncherModel$Loader$LoaderThread$4;->val$chunkSize:I

    add-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/LauncherModel$Callbacks;->bindItems(Ljava/util/ArrayList;II)V

    .line 1386
    :cond_0
    return-void
.end method
