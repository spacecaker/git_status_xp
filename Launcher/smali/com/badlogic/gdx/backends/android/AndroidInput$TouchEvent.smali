.class Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;
.super Ljava/lang/Object;


# static fields
.field static final TOUCH_DOWN:I = 0x0

.field static final TOUCH_DRAGGED:I = 0x2

.field static final TOUCH_UP:I = 0x1


# instance fields
.field pointer:I

.field final synthetic this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

.field timeStamp:J

.field type:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/badlogic/gdx/backends/android/AndroidInput;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/backends/android/AndroidInput$TouchEvent;->this$0:Lcom/badlogic/gdx/backends/android/AndroidInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
