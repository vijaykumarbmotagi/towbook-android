.class final Lcom/annimon/stream/ComparatorCompat$8;
.super Ljava/lang/Object;
.source "ComparatorCompat.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/annimon/stream/ComparatorCompat;->nullsComparator(ZLjava/util/Comparator;)Lcom/annimon/stream/ComparatorCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$comparator:Ljava/util/Comparator;

.field final synthetic val$nullFirst:Z


# direct methods
.method constructor <init>(ZLjava/util/Comparator;)V
    .registers 3

    .line 263
    iput-boolean p1, p0, Lcom/annimon/stream/ComparatorCompat$8;->val$nullFirst:Z

    iput-object p2, p0, Lcom/annimon/stream/ComparatorCompat$8;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-nez p1, :cond_f

    if-nez p2, :cond_9

    const/4 v0, 0x0

    goto :goto_e

    .line 268
    :cond_9
    iget-boolean p1, p0, Lcom/annimon/stream/ComparatorCompat$8;->val$nullFirst:Z

    if-eqz p1, :cond_e

    const/4 v0, -0x1

    :cond_e
    :goto_e
    return v0

    :cond_f
    if-nez p2, :cond_18

    .line 270
    iget-boolean p1, p0, Lcom/annimon/stream/ComparatorCompat$8;->val$nullFirst:Z

    if-eqz p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, -0x1

    :goto_17
    return v0

    .line 272
    :cond_18
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$8;->val$comparator:Ljava/util/Comparator;

    if-nez v0, :cond_1d

    goto :goto_23

    :cond_1d
    iget-object v0, p0, Lcom/annimon/stream/ComparatorCompat$8;->val$comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    :goto_23
    return v2
.end method
