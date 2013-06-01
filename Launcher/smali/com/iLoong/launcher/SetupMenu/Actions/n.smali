.class Lcom/iLoong/launcher/SetupMenu/Actions/n;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/k;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/n;->a:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/n;->a:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/k;->d()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
