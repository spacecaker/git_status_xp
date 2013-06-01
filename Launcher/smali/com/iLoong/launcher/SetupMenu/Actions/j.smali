.class Lcom/iLoong/launcher/SetupMenu/Actions/j;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;


# direct methods
.method constructor <init>(Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/iLoong/launcher/SetupMenu/Actions/j;->a:Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/iLoong/launcher/SetupMenu/Actions/j;->a:Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;

    invoke-virtual {v0}, Lcom/iLoong/launcher/SetupMenu/Actions/DesktopAction$DesktopSettingActivity;->finish()V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x45c

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(I)V

    invoke-static {}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a()Lcom/iLoong/launcher/SetupMenu/Actions/x;

    move-result-object v0

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Lcom/iLoong/launcher/SetupMenu/Actions/x;->a(I)V

    return-void
.end method
