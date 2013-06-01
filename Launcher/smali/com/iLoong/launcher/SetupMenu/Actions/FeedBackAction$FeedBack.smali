.class public Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    const v1, 0x7f080013

    if-ne v0, v1, :cond_2

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "type"

    const-string v2, "report"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "msg"

    iget-object v3, p0, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->c:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/widget/Button;->getId()I

    move-result v0

    const v1, 0x7f080014

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->setContentView(I)V

    const v0, 0x7f080012

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->c:Landroid/widget/EditText;

    const v0, 0x7f080013

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->a:Landroid/widget/Button;

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/FeedBackAction$FeedBack;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
