.class abstract Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;
.super Ljava/lang/Object;
.source "PeriodFormatterBuilder.java"

# interfaces
.implements Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/PeriodFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IgnorableAffix"
.end annotation


# instance fields
.field private volatile iOtherAffixes:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish(Ljava/util/Set;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;",
            ">;)V"
        }
    .end annotation

    .line 973
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;->iOtherAffixes:[Ljava/lang/String;

    if-nez v0, :cond_6c

    const v0, 0x7fffffff

    const/4 v1, 0x0

    .line 977
    invoke-virtual {p0}, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;->getAffixes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    const/4 v0, 0x0

    const v1, 0x7fffffff

    :goto_13
    if-ge v0, v3, :cond_25

    aget-object v6, v2, v0

    .line 978
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v1, :cond_22

    .line 979
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    move-object v5, v6

    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 987
    :cond_25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 988
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;

    if-eqz v2, :cond_2e

    .line 990
    invoke-interface {v2}, Lorg/joda/time/format/PeriodFormatterBuilder$PeriodFieldAffix;->getAffixes()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v6, 0x0

    :goto_42
    if-ge v6, v3, :cond_2e

    aget-object v7, v2, v6

    .line 991
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-gt v8, v1, :cond_58

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5b

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 993
    :cond_58
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5b
    add-int/lit8 v6, v6, 0x1

    goto :goto_42

    .line 998
    :cond_5e
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;->iOtherAffixes:[Ljava/lang/String;

    :cond_6c
    return-void
.end method

.method protected matchesOtherAffix(ILjava/lang/String;I)Z
    .registers 16

    .line 1013
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;->iOtherAffixes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    .line 1016
    iget-object v0, p0, Lorg/joda/time/format/PeriodFormatterBuilder$IgnorableAffix;->iOtherAffixes:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_32

    aget-object v10, v0, v3

    .line 1017
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ge p1, v11, :cond_1f

    const/4 v5, 0x1

    const/4 v8, 0x0

    move-object v4, p2

    move v6, p3

    move-object v7, v10

    move v9, v11

    .line 1018
    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_2d

    :cond_1f
    if-ne p1, v11, :cond_2f

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v4, p2

    move v6, p3

    move-object v7, v10

    move v9, v11

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_2f

    :cond_2d
    const/4 p1, 0x1

    return p1

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_32
    return v1
.end method
