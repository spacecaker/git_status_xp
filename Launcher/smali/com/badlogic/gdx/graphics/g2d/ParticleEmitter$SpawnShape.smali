.class public final enum Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum line:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum point:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

.field public static final enum square:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "point"

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->point:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "line"

    invoke-direct {v0, v1, v3}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->line:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "square"

    invoke-direct {v0, v1, v4}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->square:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const-string v1, "ellipse"

    invoke-direct {v0, v1, v5}, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->point:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v2

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->line:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v3

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->square:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v4

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ellipse:Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    aput-object v1, v0, v5

    sput-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;
    .locals 1

    const-class v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    return-object v0
.end method

.method public static values()[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;->ENUM$VALUES:[Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    array-length v1, v0

    new-array v2, v1, [Lcom/badlogic/gdx/graphics/g2d/ParticleEmitter$SpawnShape;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
