.class public Lorg/joda/time/TimeOfDay$Property;
.super Lorg/joda/time/field/AbstractPartialFieldProperty;
.source "TimeOfDay.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/TimeOfDay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Property"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4db1b8ed7103ae99L


# instance fields
.field private final iFieldIndex:I

.field private final iTimeOfDay:Lorg/joda/time/TimeOfDay;


# direct methods
.method constructor <init>(Lorg/joda/time/TimeOfDay;I)V
    .registers 3

    .line 1035
    invoke-direct {p0}, Lorg/joda/time/field/AbstractPartialFieldProperty;-><init>()V

    .line 1036
    iput-object p1, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    .line 1037
    iput p2, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    return-void
.end method


# virtual methods
.method public addNoWrapToCopy(I)Lorg/joda/time/TimeOfDay;
    .registers 6

    .line 1123
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-virtual {v0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 1124
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    iget v3, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->add(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 1125
    new-instance v0, Lorg/joda/time/TimeOfDay;

    iget-object v1, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public addToCopy(I)Lorg/joda/time/TimeOfDay;
    .registers 6

    .line 1097
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-virtual {v0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 1098
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    iget v3, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->addWrapPartial(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 1099
    new-instance v0, Lorg/joda/time/TimeOfDay;

    iget-object v1, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public addWrapFieldToCopy(I)Lorg/joda/time/TimeOfDay;
    .registers 6

    .line 1147
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-virtual {v0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 1148
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    iget v3, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->addWrapField(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 1149
    new-instance v0, Lorg/joda/time/TimeOfDay;

    iget-object v1, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public get()I
    .registers 3

    .line 1073
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    iget v1, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/TimeOfDay;->getValue(I)I

    move-result v0

    return v0
.end method

.method public getField()Lorg/joda/time/DateTimeField;
    .registers 3

    .line 1046
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    iget v1, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    invoke-virtual {v0, v1}, Lorg/joda/time/TimeOfDay;->getField(I)Lorg/joda/time/DateTimeField;

    move-result-object v0

    return-object v0
.end method

.method protected getReadablePartial()Lorg/joda/time/ReadablePartial;
    .registers 2

    .line 1055
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    return-object v0
.end method

.method public getTimeOfDay()Lorg/joda/time/TimeOfDay;
    .registers 2

    .line 1064
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    return-object v0
.end method

.method public setCopy(I)Lorg/joda/time/TimeOfDay;
    .registers 6

    .line 1164
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-virtual {v0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v0

    .line 1165
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    iget v3, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    invoke-virtual {v1, v2, v3, v0, p1}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[II)[I

    move-result-object p1

    .line 1166
    new-instance v0, Lorg/joda/time/TimeOfDay;

    iget-object v1, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-direct {v0, v1, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object v0
.end method

.method public setCopy(Ljava/lang/String;)Lorg/joda/time/TimeOfDay;
    .registers 3

    const/4 v0, 0x0

    .line 1197
    invoke-virtual {p0, p1, v0}, Lorg/joda/time/TimeOfDay$Property;->setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/TimeOfDay;

    move-result-object p1

    return-object p1
.end method

.method public setCopy(Ljava/lang/String;Ljava/util/Locale;)Lorg/joda/time/TimeOfDay;
    .registers 10

    .line 1181
    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-virtual {v0}, Lorg/joda/time/TimeOfDay;->getValues()[I

    move-result-object v4

    .line 1182
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay$Property;->getField()Lorg/joda/time/DateTimeField;

    move-result-object v1

    iget-object v2, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    iget v3, p0, Lorg/joda/time/TimeOfDay$Property;->iFieldIndex:I

    move-object v5, p1

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/joda/time/DateTimeField;->set(Lorg/joda/time/ReadablePartial;I[ILjava/lang/String;Ljava/util/Locale;)[I

    move-result-object p1

    .line 1183
    new-instance p2, Lorg/joda/time/TimeOfDay;

    iget-object v0, p0, Lorg/joda/time/TimeOfDay$Property;->iTimeOfDay:Lorg/joda/time/TimeOfDay;

    invoke-direct {p2, v0, p1}, Lorg/joda/time/TimeOfDay;-><init>(Lorg/joda/time/TimeOfDay;[I)V

    return-object p2
.end method

.method public withMaximumValue()Lorg/joda/time/TimeOfDay;
    .registers 2

    .line 1211
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay$Property;->getMaximumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay$Property;->setCopy(I)Lorg/joda/time/TimeOfDay;

    move-result-object v0

    return-object v0
.end method

.method public withMinimumValue()Lorg/joda/time/TimeOfDay;
    .registers 2

    .line 1224
    invoke-virtual {p0}, Lorg/joda/time/TimeOfDay$Property;->getMinimumValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/joda/time/TimeOfDay$Property;->setCopy(I)Lorg/joda/time/TimeOfDay;

    move-result-object v0

    return-object v0
.end method
