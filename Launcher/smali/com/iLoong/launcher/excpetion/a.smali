.class Lcom/iLoong/launcher/excpetion/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/excpetion/ActErrorReport;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/excpetion/ActErrorReport;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/excpetion/a;->a:Lcom/iLoong/launcher/excpetion/ActErrorReport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/a;->a:Lcom/iLoong/launcher/excpetion/ActErrorReport;

    invoke-static {v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->a(Lcom/iLoong/launcher/excpetion/ActErrorReport;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "type"

    const-string v2, "bug"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "msg"

    iget-object v3, p0, Lcom/iLoong/launcher/excpetion/a;->a:Lcom/iLoong/launcher/excpetion/ActErrorReport;

    invoke-static {v3}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->b(Lcom/iLoong/launcher/excpetion/ActErrorReport;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "phoneinfo"

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/SetupMenu;->phoneinfo()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "client"

    invoke-static {}, Lcom/iLoong/launcher/desktop/iLoongApplication;->b()Lcom/iLoong/launcher/desktop/iLoongApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/iLoong/launcher/desktop/iLoongApplication;->i()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/iLoong/launcher/app/LauncherModel;->b()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/iLoong/launcher/SetupMenu/Actions/y;

    invoke-direct {v1, v4}, Lcom/iLoong/launcher/SetupMenu/Actions/y;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/a;->a:Lcom/iLoong/launcher/excpetion/ActErrorReport;

    invoke-virtual {v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/a;->a:Lcom/iLoong/launcher/excpetion/ActErrorReport;

    invoke-static {v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->c(Lcom/iLoong/launcher/excpetion/ActErrorReport;)Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/iLoong/launcher/excpetion/a;->a:Lcom/iLoong/launcher/excpetion/ActErrorReport;

    invoke-virtual {v0}, Lcom/iLoong/launcher/excpetion/ActErrorReport;->finish()V

    goto :goto_0
.end method
