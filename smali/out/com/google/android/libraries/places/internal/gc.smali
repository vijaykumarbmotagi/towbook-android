.class public final Lcom/google/android/libraries/places/internal/gc;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/gc$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/gc;",
        "Lcom/google/android/libraries/places/internal/gc$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/libraries/places/internal/gc;

.field private static volatile e:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/gc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Lcom/google/android/libraries/places/internal/gc;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gc;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gc;->d:Lcom/google/android/libraries/places/internal/gc;

    .line 25
    const-class v0, Lcom/google/android/libraries/places/internal/gc;

    sget-object v1, Lcom/google/android/libraries/places/internal/gc;->d:Lcom/google/android/libraries/places/internal/gc;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 3
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_58

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12
    :pswitch_e
    sget-object p1, Lcom/google/android/libraries/places/internal/gc;->e:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_27

    .line 14
    const-class p2, Lcom/google/android/libraries/places/internal/gc;

    monitor-enter p2

    .line 15
    :try_start_15
    sget-object p1, Lcom/google/android/libraries/places/internal/gc;->e:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_22

    .line 17
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/gc;->d:Lcom/google/android/libraries/places/internal/gc;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 18
    sput-object p1, Lcom/google/android/libraries/places/internal/gc;->e:Lcom/google/android/libraries/places/internal/jx;

    .line 19
    :cond_22
    monitor-exit p2

    goto :goto_27

    :catchall_24
    move-exception p1

    monitor-exit p2
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    throw p1

    :cond_27
    :goto_27
    return-object p1

    .line 11
    :pswitch_28
    sget-object p1, Lcom/google/android/libraries/places/internal/gc;->d:Lcom/google/android/libraries/places/internal/gc;

    return-object p1

    .line 5
    :pswitch_2b
    new-instance p1, Lcom/google/android/libraries/places/internal/gc$a;

    .line 6
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gc$a;-><init>()V

    return-object p1

    .line 4
    :pswitch_31
    new-instance p1, Lcom/google/android/libraries/places/internal/gc;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gc;-><init>()V

    return-object p1

    :pswitch_37
    const/4 p1, 0x3

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    const-string v0, "c"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0004\u0001"

    .line 10
    sget-object v0, Lcom/google/android/libraries/places/internal/gc;->d:Lcom/google/android/libraries/places/internal/gc;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/gc;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_51
    const/4 p1, 0x0

    return-object p1

    .line 21
    :pswitch_53
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_53
        :pswitch_51
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_28
        :pswitch_e
    .end packed-switch
.end method
