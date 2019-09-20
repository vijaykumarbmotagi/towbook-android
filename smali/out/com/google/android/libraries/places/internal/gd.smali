.class public final Lcom/google/android/libraries/places/internal/gd;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/gd$a;,
        Lcom/google/android/libraries/places/internal/gd$c;,
        Lcom/google/android/libraries/places/internal/gd$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/gd;",
        "Lcom/google/android/libraries/places/internal/gd$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final h:Lcom/google/android/libraries/places/internal/gd;

.field private static volatile i:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/gd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Lcom/google/android/libraries/places/internal/gc;

.field public f:Lcom/google/android/libraries/places/internal/ga;

.field public g:Lcom/google/android/libraries/places/internal/gb;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Lcom/google/android/libraries/places/internal/gd;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/gd;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/gd;->h:Lcom/google/android/libraries/places/internal/gd;

    .line 30
    const-class v0, Lcom/google/android/libraries/places/internal/gd;

    sget-object v1, Lcom/google/android/libraries/places/internal/gd;->h:Lcom/google/android/libraries/places/internal/gd;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/libraries/places/internal/gd$a;
    .registers 1

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/gd;->h:Lcom/google/android/libraries/places/internal/gd;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/gd$a;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 4
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_7c

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 17
    :pswitch_e
    sget-object p1, Lcom/google/android/libraries/places/internal/gd;->i:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_27

    .line 19
    const-class p2, Lcom/google/android/libraries/places/internal/gd;

    monitor-enter p2

    .line 20
    :try_start_15
    sget-object p1, Lcom/google/android/libraries/places/internal/gd;->i:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_22

    .line 22
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/gd;->h:Lcom/google/android/libraries/places/internal/gd;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 23
    sput-object p1, Lcom/google/android/libraries/places/internal/gd;->i:Lcom/google/android/libraries/places/internal/jx;

    .line 24
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

    .line 16
    :pswitch_28
    sget-object p1, Lcom/google/android/libraries/places/internal/gd;->h:Lcom/google/android/libraries/places/internal/gd;

    return-object p1

    .line 6
    :pswitch_2b
    new-instance p1, Lcom/google/android/libraries/places/internal/gd$a;

    .line 7
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gd$a;-><init>()V

    return-object p1

    .line 5
    :pswitch_31
    new-instance p1, Lcom/google/android/libraries/places/internal/gd;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/gd;-><init>()V

    return-object p1

    :pswitch_37
    const/16 p1, 0x9

    .line 9
    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "a"

    aput-object v1, p1, v0

    const-string v0, "b"

    aput-object v0, p1, p2

    const/4 p2, 0x2

    .line 10
    invoke-static {}, Lcom/google/android/libraries/places/internal/gd$b;->b()Lcom/google/android/libraries/places/internal/in;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x3

    const-string v0, "c"

    aput-object v0, p1, p2

    const/4 p2, 0x4

    .line 11
    invoke-static {}, Lcom/google/android/libraries/places/internal/gd$c;->b()Lcom/google/android/libraries/places/internal/in;

    move-result-object v0

    aput-object v0, p1, p2

    const/4 p2, 0x5

    const-string v0, "d"

    aput-object v0, p1, p2

    const/4 p2, 0x6

    const-string v0, "e"

    aput-object v0, p1, p2

    const/4 p2, 0x7

    const-string v0, "f"

    aput-object v0, p1, p2

    const/16 p2, 0x8

    const-string v0, "g"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0006\u0000\u0001\u0001\n\u0006\u0000\u0000\u0000\u0001\u000c\u0000\u0002\u000c\u0001\u0003\u0004\u0002\u0006\t\u0005\u0008\t\u0007\n\t\t"

    .line 15
    sget-object v0, Lcom/google/android/libraries/places/internal/gd;->h:Lcom/google/android/libraries/places/internal/gd;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/gd;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_75
    const/4 p1, 0x0

    return-object p1

    .line 26
    :pswitch_77
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_77
        :pswitch_75
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_28
        :pswitch_e
    .end packed-switch
.end method
