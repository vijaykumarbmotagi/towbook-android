.class public final Lcom/google/android/libraries/places/internal/gx;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/gx$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/gx;",
        "Lcom/google/android/libraries/places/internal/gx$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final c:Lcom/google/android/libraries/places/internal/gx;

.field private static volatile e:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/gx;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:Lcom/google/android/libraries/places/internal/fy;

.field private d:B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 26
    new-instance v0, Lcom/google/android/libraries/places/internal/gx;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gx;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gx;->c:Lcom/google/android/libraries/places/internal/gx;

    .line 27
    const-class v0, Lcom/google/android/libraries/places/internal/gx;

    sget-object v1, Lcom/google/android/libraries/places/internal/gx;->c:Lcom/google/android/libraries/places/internal/gx;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput-byte v0, p0, Lcom/google/android/libraries/places/internal/gx;->d:B

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_5c

    .line 25
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 13
    :pswitch_f
    sget-object p1, Lcom/google/android/libraries/places/internal/gx;->e:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_28

    .line 15
    const-class p2, Lcom/google/android/libraries/places/internal/gx;

    monitor-enter p2

    .line 16
    :try_start_16
    sget-object p1, Lcom/google/android/libraries/places/internal/gx;->e:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_23

    .line 18
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/gx;->c:Lcom/google/android/libraries/places/internal/gx;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 19
    sput-object p1, Lcom/google/android/libraries/places/internal/gx;->e:Lcom/google/android/libraries/places/internal/jx;

    .line 20
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

    .line 12
    :pswitch_29
    sget-object p1, Lcom/google/android/libraries/places/internal/gx;->c:Lcom/google/android/libraries/places/internal/gx;

    return-object p1

    .line 6
    :pswitch_2c
    new-instance p1, Lcom/google/android/libraries/places/internal/gx$a;

    .line 7
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gx$a;-><init>()V

    return-object p1

    .line 5
    :pswitch_32
    new-instance p1, Lcom/google/android/libraries/places/internal/gx;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gx;-><init>()V

    return-object p1

    :pswitch_38
    const/4 p1, 0x2

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "a"

    aput-object p2, p1, v1

    const-string p2, "b"

    aput-object p2, p1, v0

    const-string p2, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0409\u0000"

    .line 11
    sget-object v0, Lcom/google/android/libraries/places/internal/gx;->c:Lcom/google/android/libraries/places/internal/gx;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/gx;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_4c
    if-nez p2, :cond_4f

    const/4 v0, 0x0

    :cond_4f
    int-to-byte p1, v0

    .line 23
    iput-byte p1, p0, Lcom/google/android/libraries/places/internal/gx;->d:B

    const/4 p1, 0x0

    return-object p1

    .line 22
    :pswitch_54
    iget-byte p1, p0, Lcom/google/android/libraries/places/internal/gx;->d:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_54
        :pswitch_4c
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_29
        :pswitch_f
    .end packed-switch
.end method
