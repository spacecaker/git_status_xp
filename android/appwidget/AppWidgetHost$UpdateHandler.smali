.class Landroid/appwidget/AppWidgetHost$UpdateHandler;
.super Landroid/os/Handler;
.source "AppWidgetHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/appwidget/AppWidgetHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/appwidget/AppWidgetHost;


# direct methods
.method public constructor <init>(Landroid/appwidget/AppWidgetHost;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 74
    iput-object p1, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    .line 75
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 79
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 89
    .end local p0
    :goto_0
    return-void

    .line 81
    .restart local p0
    :pswitch_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, p0}, Landroid/appwidget/AppWidgetHost;->updateAppWidgetView(ILandroid/widget/RemoteViews;)V

    goto :goto_0

    .line 85
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Landroid/appwidget/AppWidgetHost$UpdateHandler;->this$0:Landroid/appwidget/AppWidgetHost;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {v0, v1, p0}, Landroid/appwidget/AppWidgetHost;->onProviderChanged(ILandroid/appwidget/AppWidgetProviderInfo;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
