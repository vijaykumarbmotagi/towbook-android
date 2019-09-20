.class public final Lcom/google/android/libraries/places/internal/he;
.super Lcom/google/android/libraries/places/internal/ij;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/jq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/libraries/places/internal/he$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/libraries/places/internal/ij<",
        "Lcom/google/android/libraries/places/internal/he;",
        "Lcom/google/android/libraries/places/internal/he$a;",
        ">;",
        "Lcom/google/android/libraries/places/internal/jq;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/libraries/places/internal/he;

.field private static volatile c:Lcom/google/android/libraries/places/internal/jx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/jx<",
            "Lcom/google/android/libraries/places/internal/he;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/iq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/iq<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 28
    new-instance v0, Lcom/google/android/libraries/places/internal/he;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/he;-><init>()V

    sput-object v0, Lcom/google/android/libraries/places/internal/he;->b:Lcom/google/android/libraries/places/internal/he;

    .line 29
    const-class v0, Lcom/google/android/libraries/places/internal/he;

    sget-object v1, Lcom/google/android/libraries/places/internal/he;->b:Lcom/google/android/libraries/places/internal/he;

    invoke-static {v0, v1}, Lcom/google/android/libraries/places/internal/ij;->a(Ljava/lang/Class;Lcom/google/android/libraries/places/internal/ij;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/ij;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/kb;->b:Lcom/google/android/libraries/places/internal/kb;

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/he;->a:Lcom/google/android/libraries/places/internal/iq;

    return-void
.end method

.method public static a()Lcom/google/android/libraries/places/internal/he$a;
    .registers 1

    .line 6
    sget-object v0, Lcom/google/android/libraries/places/internal/he;->b:Lcom/google/android/libraries/places/internal/he;

    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/ij;->f()Lcom/google/android/libraries/places/internal/ij$a;

    move-result-object v0

    check-cast v0, Lcom/google/android/libraries/places/internal/he$a;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/android/libraries/places/internal/ij$d;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 7
    invoke-virtual {p1}, Lcom/google/android/libraries/places/internal/ij$d;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_4e

    .line 27
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 16
    :pswitch_e
    sget-object p1, Lcom/google/android/libraries/places/internal/he;->c:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_27

    .line 18
    const-class p2, Lcom/google/android/libraries/places/internal/he;

    monitor-enter p2

    .line 19
    :try_start_15
    sget-object p1, Lcom/google/android/libraries/places/internal/he;->c:Lcom/google/android/libraries/places/internal/jx;

    if-nez p1, :cond_22

    .line 21
    new-instance p1, Lcom/google/android/libraries/places/internal/hl;

    sget-object v0, Lcom/google/android/libraries/places/internal/he;->b:Lcom/google/android/libraries/places/internal/he;

    invoke-direct {p1, v0}, Lcom/google/android/libraries/places/internal/hl;-><init>(Lcom/google/android/libraries/places/internal/ij;)V

    .line 22
    sput-object p1, Lcom/google/android/libraries/places/internal/he;->c:Lcom/google/android/libraries/places/internal/jx;

    .line 23
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

    .line 15
    :pswitch_28
    sget-object p1, Lcom/google/android/libraries/places/internal/he;->b:Lcom/google/android/libraries/places/internal/he;

    return-object p1

    .line 9
    :pswitch_2b
    new-instance p1, Lcom/google/android/libraries/places/internal/he$a;

    .line 10
    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/he$a;-><init>()V

    return-object p1

    .line 8
    :pswitch_31
    new-instance p1, Lcom/google/android/libraries/places/internal/he;

    invoke-direct {p1}, Lcom/google/android/libraries/places/internal/he;-><init>()V

    return-object p1

    .line 12
    :pswitch_37
    new-array p1, p2, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "a"

    aput-object v0, p1, p2

    const-string p2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a"

    .line 14
    sget-object v0, Lcom/google/android/libraries/places/internal/he;->b:Lcom/google/android/libraries/places/internal/he;

    invoke-static {v0, p2, p1}, Lcom/google/android/libraries/places/internal/he;->a(Lcom/google/android/libraries/places/internal/jo;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_47
    const/4 p1, 0x0

    return-object p1

    .line 25
    :pswitch_49
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_49
        :pswitch_47
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_28
        :pswitch_e
    .end packed-switch
.end method
