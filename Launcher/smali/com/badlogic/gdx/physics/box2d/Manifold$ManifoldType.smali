.class public final enum Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;
.super Ljava/lang/Enum;


# static fields
.field public static final enum Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

.field public static final enum FaceA:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

.field public static final enum FaceB:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    const-string v1, "Circle"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    const-string v1, "FaceA"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceA:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    new-instance v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    const-string v1, "FaceB"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceB:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->Circle:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceA:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->FaceB:Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;->ENUM$VALUES:[Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/physics/box2d/Manifold$ManifoldType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
