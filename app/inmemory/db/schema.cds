namespace filamentManagement;

entity Filament {
  key ID: UUID;
  purchasePrice: Decimal(10,2);
  purchaseDate: Date;
  remainingAmount: Double;
  weight: Double;
  manufacturer: Association to Manufacturer;
  materialType: Association to MaterialType;
  color: Association to Color;
}

entity Manufacturer {
  key ID: UUID;
  name: String(200);
  filaments: Association to many Filament on filaments.manufacturer = $self;
}

entity MaterialType {
  key ID: UUID;
  type: String(200);
  filaments: Association to many Filament on filaments.materialType = $self;
}

entity Color {
  key ID: UUID;
  colorName: String(200);
  filaments: Association to many Filament on filaments.color = $self;
}

