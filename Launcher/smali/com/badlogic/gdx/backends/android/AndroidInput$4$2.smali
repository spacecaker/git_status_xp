.class Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$4;

.field private final synthetic val$listener:Lcom/badlogic/gdx/Input$TextInputListener;


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput$4;Lcom/badlogic/gdx/Input$TextInputListener;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;->this$1:Lcom/badlogic/gdx/backends/android/AndroidInput$4;

    iput-object p2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;

    iget-object v2, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;->val$listener:Lcom/badlogic/gdx/Input$TextInputListener;

    invoke-direct {v1, p0, v2}, Lcom/badlogic/gdx/backends/android/AndroidInput$4$2$1;-><init>(Lcom/badlogic/gdx/backends/android/AndroidInput$4$2;Lcom/badlogic/gdx/Input$TextInputListener;)V

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V

    return-void
.end method
