.class public final Lcom/google/android/libraries/places/internal/fu$a;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/fu$a$a;,
        Lcom/google/android/libraries/places/internal/fu$a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/fu$a;",
        "Lcom/google/android/libraries/places/internal/fu$a$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/libraries/places/internal/fu$a;

.field private static volatile f:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/fu$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/google/android/libraries/places/internal/gr;

.field private e:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/fu$a;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/fu$a;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/fu$a;->d:Lcom/google/android/libraries/places/internal/fu$a;

    .line 29
    const-class v0, Lcom/google/android/libraries/places/internal/fu$a;

    sget-object v1, Lcom/google/android/libraries/places/internal/fu$a;->d:Lcom/google/android/libraries/places/internal/fu$a;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/fu$a;->e:B

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/google/android/libraries/places/internal/fu$a;->b:I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 5
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_68

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15
    :pswitch_f
    sget-object p1, Lcom/google/android/libraries/places/internal/fu$a;->f:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_28

    .line 17
    const-class p2, Lcom/google/android/libraries/places/internal/fu$a;

    monitor-enter p2

    .line 18
    :try_start_16
    sget-object p1, Lcom/google/android/libraries/places/internal/fu$a;->f:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_23

    .line 20
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/fu$a;->d:Lcom/google/android/libraries/places/internal/fu$a;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 21
    sput-object p1, Lcom/google/android/libraries/places/internal/fu$a;->f:Lcom/google/android/libraries/places/internal/jx;

    .line 22
    :cond_23
    monitor-exit p2

    goto :goto_28

    :catchall_25
    move-exception p1

    monitor-exit p2
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_25

    throw p1

    :cond_28
    :goto_28
    return-object p1

    .line 14
    :pswitch_29
    sget-object p1, Lcom/google/android/libraries/places/internal/fu$a;->d:Lcom/google/android/libraries/places/internal/fu$a;

    return-object p1

    .line 7
    :pswitch_2c
    new-instance p1, Lcom/google/android/libraries/places/internal/fu$a$a;

    .line 8
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/fu$a$a;-><init>()V

    return-object p1

    .line 6
    :pswitch_32
    new-instance p1, Lcom/google/android/libraries/places/internal/fu$a;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/fu$a;-><init>()V

    return-object p1

    :pswitch_38
    const/4 p1, 0x4

    .line 10
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const/4 p2, 0x2

    .line 11
    invoke-static {}, Lcom/google/android/libraries/places/internal/fu$a$b;->b()Lcom/google/android/libraries/places/internal/in;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0001\u0001\u000c\u0000\u0002\u0409\u0001"

    .line 13
    sget-object v0, Lcom/google/android/libraries/places/internal/fu$a;->d:Lcom/google/android/libraries/places/internal/fu$a;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/fu$a;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_58
    if-nez p2, :cond_5b

    const/4 v0, 0x0

    :cond_5b
    int-to-byte p1, v0

    .line 25
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/fu$a;->e:B

    const/4 p1, 0x0

    return-object p1

    .line 24
    :pswitch_60
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/fu$a;->e:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_60
        :pswitch_58
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_29
        :pswitch_f
    .end packed-switch
.end method
