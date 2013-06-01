.class Lcom/iLoong/launcher/SetupMenu/Actions/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/k;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/k;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/m;->a:Lcom/iLoong/launcher/SetupMenu/Actions/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
