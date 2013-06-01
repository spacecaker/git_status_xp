.class Lcom/iLoong/launcher/SetupMenu/f;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/p;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/p;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    iget v0, p1, Landroid/os/Message;->arg2:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    mul-double/2addr v0, v2

    iget v2, p1, Landroid/os/Message;->arg1:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-static {v2, v0, v1}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;I)V

    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    const/16 v2, 0x64

    invoke-static {v1, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;I)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-virtual {v1, v0}, Lcom/iLoong/launcher/SetupMenu/p;->b(Lcom/iLoong/launcher/SetupMenu/t;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-static {v1, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;I)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    const v2, 0x7f0c0090

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_2
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-static {v1, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;I)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    const v2, 0x7f0c0092

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    invoke-static {v1, v0, v2}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;I)V

    iget-object v1, p0, Lcom/iLoong/launcher/SetupMenu/f;->a:Lcom/iLoong/launcher/SetupMenu/p;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/iLoong/launcher/SetupMenu/t;

    const v2, 0x7f0c0091

    invoke-static {v2}, Lcom/iLoong/launcher/Desktop3D/at;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v3}, Lcom/iLoong/launcher/SetupMenu/p;->a(Lcom/iLoong/launcher/SetupMenu/p;Lcom/iLoong/launcher/SetupMenu/t;Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x194 -> :sswitch_2
    .end sparse-switch
.end method
