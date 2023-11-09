module.exports = (sequelize, DataTypes) => {
  const Responses = sequelize.define("Responses", {
    full_name: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    email_address: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    description: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    gender: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    programming_stack: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    certificates: {
      type: DataTypes.STRING,
      allowNull: false,
    },
  });

  return Responses;
};
