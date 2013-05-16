.class Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;
.super Landroid/os/AsyncTask;
.source "WimaxButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;->requestStateChange(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;->this$0:Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;->val$context:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;->val$desiredState:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .parameter "args"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;->val$context:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/powerwidget/WimaxButton$WimaxStateTracker$1;->val$desiredState:Z

    invoke-static {v0, v1}, Landroid/net/wimax/WimaxHelper;->setWimaxEnabled(Landroid/content/Context;Z)Z

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method
