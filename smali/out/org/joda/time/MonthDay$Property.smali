.class public Lorg/joda/time/MonthDay$Property;
.super Lorg/joda/time/field/AbstractPartialFieldProperty;
.source "MonthDay.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/MonthDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4f7cffbcbc856febL


# instance fields
.field private final iBase:Lorg/joda/time/MonthDay;

.field private final iFieldIndex:I


# direct methods
.method constructor <init>(Lorg/joda/time/MonthDay;I)V
    .registers 3

    .line 842
    invoke-direct {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;-><init>()V

    .line 843
    iput-object p1, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    .line 844
    iput p2, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    return-void
.end method


# virtual methods
.method public addToCopy(I)Lorg/joda/time/MonthDay;
    .registers 6

    .line 899
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 900
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v3, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 901
    new-instance v0, Lorg/joda/time/MonthDay;

    iget-object v1, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/MonthDay;
    .registers 6

    .line 923
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 924
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v3, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 925
    new-instance v0, Lorg/joda/time/MonthDay;

    iget-object v1, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v0
.end method

.method public get()I
    .registers 3

    .line 880
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v1, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/MonthDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .registers 3

    .line 853
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v1, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/MonthDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method public getMonthDay()Lorg/joda/time/MonthDay;
    .registers 2

    .line 871
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    return-object v0
.end method

.method protected getReadablePartial()Lorg/joda/time/ReadablePartial;
    .registers 2

    .line 862
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/MonthDay;
    .registers 6

    .line 940
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v0

    .line 941
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v3, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 942
    new-instance v0, Lorg/joda/time/MonthDay;

    iget-object v1, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/MonthDay;
    .registers 3

    const/4 v0, 0x0

    .line 973
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/MonthDay$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MonthDay;

    move-result-object p1

    return-object p1
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/MonthDay;
    .registers 10

    .line 957
    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-virtual {v0}, Lorg/joda/time/MonthDay;->getValues()[I

    move-result-object v4

    .line 958
    invoke-virtual {p0}, Lorg/joda/time/MonthDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    iget v3, p0, Lorg/joda/time/MonthDay$Property;->iFieldIndex:I

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object p1

    .line 959
    new-instance p2, Lorg/joda/time/MonthDay;

    iget-object v0, p0, Lorg/joda/time/MonthDay$Property;->iBase:Lorg/joda/time/MonthDay;

    invoke-direct {p2, v0, p1}, Lorg/joda/time/MonthDay;-><init>(Lorg/joda/time/MonthDay;[I)V

    return-object p2
.end method
