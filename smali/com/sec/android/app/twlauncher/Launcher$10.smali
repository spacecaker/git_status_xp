.class Lcom/sec/android/app/twlauncher/Launcher$10;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/twlauncher/Launcher;->bindAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/twlauncher/Launcher;

.field final synthetic val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

.field final synthetic val$workspace:Lcom/sec/android/app/twlauncher/Workspace;


# direct methods
.method constructor <init>(Lcom/sec/android/app/twlauncher/Launcher;Lcom/sec/android/app/twlauncher/Workspace;Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 5370
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->this$0:Lcom/sec/android/app/twlauncher/Launcher;

    iput-object p2, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$workspace:Lcom/sec/android/app/twlauncher/Workspace;

    iput-object p3, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 5372
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$workspace:Lcom/sec/android/app/twlauncher/Workspace;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v3, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v4, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->cellY:I

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v5, v5, Lcom/sec/android/app/twlauncher/ItemInfo;->spanX:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/Launcher$10;->val$infoItem:Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->spanY:I

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/sec/android/app/twlauncher/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 5374
    return-void
.end method
