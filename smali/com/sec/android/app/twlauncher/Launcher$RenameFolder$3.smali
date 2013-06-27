.class Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$3;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->createDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V
    .locals 0
    .parameter

    .prologue
    .line 3639
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 3641
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder$3;->this$1:Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;

    #calls: Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->changeFolderName()V
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;->access$1300(Lcom/sec/android/app/twlauncher/Launcher$RenameFolder;)V

    .line 3642
    return-void
.end method
